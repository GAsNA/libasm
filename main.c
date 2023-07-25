#include <stdio.h>
#include <string.h>

#define STRLEN(x)			printf("'%s' = %d (%d)\n", x, ft_strlen(x), (int)strlen(x));
#define STRCMP(a, b)		printf("'%s':'%s' = %d (%d)\n", a, b, ft_strcmp(a, b), strcmp(a, b));
#define WRITE(s, x)			printf("^%ld ('%s':%ld)\n", ft_write(STDOUT_FILENO, s, x), s, x);
#define READ(b, x)			r = ft_read(STDIN_FILENO, buffer, x); printf("'%s':%ld\n", buffer, r);
#define DUP(s)				tmp = ft_strdup(s); printf("'%s' ('%s')\n", tmp, s); free(tmp); tmp = NULL;

void	_hw();
int		ft_strlen(char const *str);

int main()
{
	// HELLO WORLD
	printf("<----------------- HELLO WORLD ----------------->\n");
	_hw();
	printf("\n");

	// STRLEN
	printf("<----------------- STRLEN ----------------->\n");
	STRLEN("")
	STRLEN("toto")
	STRLEN("totototo")
	STRLEN("0123456789abcdef")
	STRLEN("42")
	STRLEN("1")
	printf("\n");

	return 0;
}
