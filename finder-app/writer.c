# include <syslog.h>
# include <stdio.h>
# include <stdlib.h>
# include <errno.h>
# include <string.h>

int main(int argc, char *argv[])
{
	openlog("writer", 0, LOG_USER);

	if(argc != 3)
	{
		syslog(LOG_ERR, "Missing arguments, required argument count is %d", argc);
		return 1;
	}

	char* writeFile = argv[1];
	char* writeStr = argv[2];

	FILE *file = fopen(writeFile, "w");
	if(!file)
	{
		syslog(LOG_ERR, "Error opening file %s: %s", writeFile, strerror(errno));
		return 1;
	}
	fprintf(file, "%s", writeStr);
	fclose(file);
	syslog(LOG_INFO, "Writing %s to %s", writeStr, writeFile);

	closelog();

	return 0;
}
