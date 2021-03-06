#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <stdbool.h>

pthread_mutex_t lock;
pthread_cond_t needChassis;
pthread_cond_t chassisReady;
pthread_cond_t readyForRoof;
pthread_cond_t readyForPaint;

bool chassis = false;
bool tire = false;
bool seat = false;
bool engine = false;
bool roof = false;
bool assemblyCompleted = false;
int car = 1;

void *a(void *arg)
{
    while (true)
    {
        while (tire || !chassis)
        {
            pthread_cond_wait(&chassisReady, &lock);
        }
        // add tire
        tire = true;
        printf("A puts tires\n");
        sleep(1);
        // signal
        pthread_cond_signal(&readyForRoof);

        while (!roof)
        {
            pthread_cond_wait(&readyForPaint, &lock);
        }
        // as the assembly line is completed,
        // set all variables to false
        chassis = tire = seat = engine = roof = false;
        printf("A paints\n\n");
        car += 1;
        sleep(1);
        // signal
        pthread_cond_signal(&needChassis);
    }
    return NULL;
}

void *b(void *arg)
{
    // Chassis on assembly line
    while (true)
    {
        while (chassis)
        {
            pthread_cond_wait(&needChassis, &lock);
        }
        // add chassis
        chassis = true;
        printf("Car #%d\n", car);
        printf("B puts chassis on the conveyor\n");
        sleep(1);
        // signal
        pthread_cond_broadcast(&chassisReady);
    }
    return NULL;
}

void *c(void *arg)
{
    while (true)
    {
        while (seat || !chassis)
        {
            pthread_cond_wait(&chassisReady, &lock);
        }
        // add seat
        seat = true;
        printf("C attaches seats\n");
        sleep(1);
        // signal
        pthread_cond_signal(&readyForRoof);
    }
    return NULL;
}

void *d(void *arg)
{
    while (true)
    {
        while (engine || !chassis)
        {
            pthread_cond_wait(&chassisReady, &lock);
        }
        // add engine
        engine = true;
        printf("D places engine\n");
        sleep(1);
        // signal
        pthread_cond_signal(&readyForRoof);

        while (!tire || !seat || !engine)
        {
            pthread_cond_wait(&readyForRoof, &lock);
        }
        // add roof
        roof = true;
        printf("D assembles top cover\n");
        sleep(1);
        // signal
        pthread_cond_signal(&readyForPaint);
    }
    return NULL;
}

int main()
{
    pthread_mutex_init(&lock, 0);
    pthread_cond_init(&needChassis, 0);
    pthread_cond_init(&chassisReady, 0);
    pthread_cond_init(&readyForPaint, 0);
    pthread_cond_init(&readyForRoof, 0);
    pthread_t ta, tb, tc, td;
    pthread_create(&ta, NULL, a, NULL);
    pthread_create(&tb, NULL, b, NULL);
    pthread_create(&tc, NULL, c, NULL);
    pthread_create(&td, NULL, d, NULL);
    while (true)
    {
        sleep(1000);
    }
    return 0;
}