#include <stdio.h>
#include <string.h>

#define STRLEN(x)			printf("'%s' = %d (%d)\n", x, ft_strlen(x), (int)strlen(x));
#define STRCMP(a, b)		printf("'%s':'%s' = %d (%d)\n", a, b, ft_strcmp(a, b), strcmp(a, b));
#define WRITE(s, x)			printf("^%ld ('%s':%ld)\n", ft_write(STDOUT_FILENO, s, x), s, x);
#define READ(b, x)			r = ft_read(STDIN_FILENO, buffer, x); printf("'%s':%ld\n", buffer, r);
#define DUP(s)				tmp = ft_strdup(s); printf("'%s' ('%s')\n", tmp, s); free(tmp); tmp = NULL;

void	_hw();
int		ft_strlen(char const *str);
char	*ft_strcpy(char *dst, char const *src);
int		ft_strcmp(char const *s1, char const *s2);

int main()
{
	// INIT
	char	buffer[100];

	int	i = 0;
	while (i < 100)
		buffer[i++] = 0;

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
	
	printf("<----------------- STRCPY ----------------->\n");
	printf("'%s' ('toto')\n", ft_strcpy(buffer, "toto"));
	printf("'%s' (empty)\n", ft_strcpy(buffer, ""));
	printf("'%s' ('long message')\n", ft_strcpy(buffer, "long message"));
	printf("'%s' (NULL > not modified)\n", ft_strcpy(buffer, NULL));
	printf("\n");

	printf("<----------------- STRCMP ----------------->\n");
	STRCMP("", "")
	STRCMP("toto", "toto")
	STRCMP("", "toto")
	STRCMP("toto", "")
	STRCMP("toto", "totobar")
	STRCMP("totobar", "toto")
	printf("\n");

	return 0;
}
