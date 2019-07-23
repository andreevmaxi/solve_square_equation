#include <iostream>
#include <cmath>
#include <float.h>
#include <string>
#include <vector>

using namespace std;

int a = 0;
int b = 0;
int c = 0;
double x1 = NAN;
double x2 = NAN;


/*!
    \defgroup main_module solve square module
    \brief This is main module
    this is the module which contains all working functions
*/

/**
    \defgroup first_module solve square function module
	\ingroup main_module
    \brief This function solving square equation
    \author andreevmaxi
	\version 1.1
	\date july 2019 year
	\copyright korobcom
    This is head function in this program,
    it's solving square equation by getting
    coefficients (head, second and free) of inputing equation and
    changes variables x1 and x2 with 1st and 2nd roots of equation.
    the formulas in variant of a!=0, b!=0,c!=0:
    \f$ x_1 = \frac{-b-\sqrt{b^2-4*a*c}}{2a} \f$ and \f$ x_2 = \frac{-b+\sqrt{b^2-4*a*c}}{2a} \f$
    \return Also it return char values '1','2','0' and 'i', where is:
    '1' - means that this equation have only one root and it is in x1 variable.
    '2' - means that this equation have two roots in x1 and x2 variable respectively.
    '0' - means that this equation don't have any roots!
    'i' - means that this equation have infinite number of roots.
    \param[in] a it's integer variable of head member(coefficient) of equation
    \param[in] b it's integer variable of second member(coefficient) of equation
    \param[in] c it's integer variable of free member(coefficient) of equation
    \param[out] x1 it's double variable which contains first root of input equation
    \param[out] x2 it's double variable which contains second root of input equation


    \code
    char solve_square_equation(int a, int b, int c, double* x1, double* x2){

        switch(a)
        {
            case 0:
            {
                if (b == 0 && c == 0){
                    return 'i';
                }
                if (b == 0 && c != 0){
                    return '0';
                }
                *x1=-c/b;
                return '1';
            }
            default:
            {
                int discriminate = 0; /// variable used for calculate discriminate of square equation
                discriminate = b * b - 4 * a * c;
                if ( discriminate >= 0 )
                {
                    *x1 = (- b - sqrt( discriminate ) )/(2 * a);
                    *x2 = (- b + sqrt( discriminate ) )/(2 * a);
                    if ( discriminate == 0)
                    {
                        return '1';
                    } else
                    {
                        return '2';
                    }
                } else
                {
                    return '0';
                }
            }

        }

    }
    \endcode
*/

char solve_square_equation(int a, int b, int c, double* x1, double* x2){

    switch(a)
    {
        case 0:
        {
            if (b == 0 && c == 0){
                return 'i';
            }
            if (b == 0 && c != 0){
                return '0';
            }
            *x1=-c/b;
            return '1';
        }
        default:
        {
            int discriminate = 0; /// variable used for calculate discriminate of square equation
            discriminate = b * b - 4 * a * c;
            if ( discriminate >= 0 )
            {
                *x1 = (- b - sqrt( discriminate ) )/(2 * a);
                *x2 = (- b + sqrt( discriminate ) )/(2 * a);
                if ( discriminate == 0)
                {
                    return '1';
                } else
                {
                    return '2';
                }
            } else
            {
                return '0';
            }
        }

    }

}



/**
    \defgroup second_module side module
	\ingroup main_module
    \brief This function get's coefficients from wrote equation
    \author andreevmaxi
	\version 1.1
	\date july 2019 year
	\copyright korobcom

    This is second head function in this program,

    it's getting coefficients from printed equation
    by processing every symbol of it.
    At the end it print coefficients of this equation
    in a, b and c variables.
    \param[out] a it's integer variable of head member(coefficient) of equation which used in solve_square_equation function
    \param[out] b it's integer variable of second member(coefficient) of equation which used in solve_square_equation function
    \param[out] c it's integer variable of free member(coefficient) of equation which used in solve_square_equation function
    \param[in] user_equation vector of chars which first it contains answer of user about want he to write equation by yourself
    or just coefficients second it's used in input of user's equations(after deleting information about previous user answer)
    \param[in] tmp it's temperary char variable which used in inputing user_equation and than in processing of user_equation
    \return If this function return char 'k', than everything is OK!


    \code
    char print_equation(int* a, int* b, int* c){
        int i = 0;
        int tmp_coefficient = 0;
        bool sign_flag = 0;
        vector <char> user_equation;
        char tmp = ' ';

        cout << "Do you want to write your equation by yourself?{YES/NO}" << endl;

        cin.sync();
        while(cin.get(tmp)) {

            user_equation.push_back(tmp);

            if (tmp == '\n'){
                break;
            }

        }

        if (user_equation[0] != 'Y' || user_equation[1] != 'E' || user_equation[2] != 'S')
        {

            cout << "Write down coefficients of your equation" << endl;
            cin >> *a >> *b >> *c;
            return 'k';
        }

        user_equation.resize(0);

        cout << "Now write your equation; example: 34x^2-51*x + 13213+24x^2= 0" << endl;

        cin.sync();
        while(cin.get(tmp)) {

            if (tmp == 'X'){
                tmp = tmp - 'A' + 'a';
            }

            user_equation.push_back(tmp);

            if (tmp == '\n'){
                break;
            }

        }

        tmp = ' ';

        tmp = user_equation[i];

        while(tmp!='=' && tmp!='\n')
        {
            if(tmp != ' ' && tmp != '+' && tmp != '-')
            {
                if(tmp != 'x' && tmp != '*')
                {
                    tmp_coefficient = tmp_coefficient*10 + (tmp - '0');

                } else {
                    if(tmp_coefficient == 0){
                        ++tmp_coefficient;
                    }
                    if(tmp == '*'){
                        ++i;
                    }

                    if(user_equation[i+1] == '^'){

                        if (sign_flag == 0){
                            *a += tmp_coefficient;
                        } else
                        {
                            *a -= tmp_coefficient;
                        }

                        sign_flag = 0;
                        i += 2;
                        tmp_coefficient = 0;
                    }else
                    {
                        if (sign_flag == 0){
                            *b += tmp_coefficient;
                        } else
                        {
                            *b -= tmp_coefficient;
                        }

                        sign_flag = 0;
                        tmp_coefficient = 0;
                    }

                }
            }else
            {
                if (tmp_coefficient != 0){

                    if (sign_flag == 0){
                        *c += tmp_coefficient;
                    } else
                    {
                        *c -= tmp_coefficient;
                    }

                    sign_flag = 0;
                    tmp_coefficient = 0;
                }

                if (tmp == '-'){
                    sign_flag = 1;
                }

            }

        ++i;
        tmp = user_equation[i];

        }

        if (tmp_coefficient!=0){

            if(sign_flag == 0){
                *c += tmp_coefficient;
            } else {
                *c -= tmp_coefficient;
            }

        }

        return 'k';//where is k == ok

    }
    \endcode
*/

char print_equation(int* a, int* b, int* c){
    int i = 0;
    int tmp_coefficient = 0;
    bool sign_flag = 0;
    vector <char> user_equation;
    char tmp = ' ';

    cout << "Do you want to write your equation by yourself?{YES/NO}" << endl;

    cin.sync();
    while(cin.get(tmp)) {

        user_equation.push_back(tmp);

        if (tmp == '\n'){
            break;
        }

    }

    if (user_equation[0] != 'Y' || user_equation[1] != 'E' || user_equation[2] != 'S')
    {

        cout << "Write down coefficients of your equation" << endl;
        cin >> *a >> *b >> *c;
        return 'k';
    }

    user_equation.resize(0);

    cout << "Now write your equation; example: 34x^2-51*x + 13213+24x^2= 0" << endl;

    cin.sync();
    while(cin.get(tmp)) {

        if (tmp == 'X'){
            tmp = tmp - 'A' + 'a';
        }

        user_equation.push_back(tmp);

        if (tmp == '\n'){
            break;
        }

    }

    tmp = ' ';

    tmp = user_equation[i];

    while(tmp!='=' && tmp!='\n')
    {
        if(tmp != ' ' && tmp != '+' && tmp != '-')
        {
            if(tmp != 'x' && tmp != '*')
            {
                tmp_coefficient = tmp_coefficient*10 + (tmp - '0');

            } else {
                if(tmp_coefficient == 0){
                    ++tmp_coefficient;
                }
                if(tmp == '*'){
                    ++i;
                }

                if(user_equation[i+1] == '^'){

                    if (sign_flag == 0){
                        *a += tmp_coefficient;
                    } else
                    {
                        *a -= tmp_coefficient;
                    }

                    sign_flag = 0;
                    i += 2;
                    tmp_coefficient = 0;
                }else
                {
                    if (sign_flag == 0){
                        *b += tmp_coefficient;
                    } else
                    {
                        *b -= tmp_coefficient;
                    }

                    sign_flag = 0;
                    tmp_coefficient = 0;
                }

            }
        }else
        {
            if (tmp_coefficient != 0){

                if (sign_flag == 0){
                    *c += tmp_coefficient;
                } else
                {
                    *c -= tmp_coefficient;
                }

                sign_flag = 0;
                tmp_coefficient = 0;
            }

            if (tmp == '-'){
                sign_flag = 1;
            }

        }

    ++i;
    tmp = user_equation[i];

    }

    if (tmp_coefficient!=0){

        if(sign_flag == 0){
            *c += tmp_coefficient;
        } else {
            *c -= tmp_coefficient;
        }

    }

    return 'k';//where is k == ok

}


/**
    \defgroup third_module in program module
	\ingroup main_module
    \brief Main function
    \author andreevmaxi
	\version 1.1
	\date july 2019 year
	\copyright korobcom
    It's just processing returning information
    from function solve_square_equation and outputing roots
    of square equations (which contains in x1 and x2 variables)
    \param[out] a it's integer variable of head member(coefficient) of equation
    \param[out] b it's integer variable of second member(coefficient) of equation
    \param[out] c it's integer variable of free member(coefficient) of equation
    \param[in] x1 it's double variable which contains first root of input equation
    \param[in] x2 it's double variable which contains second root of input equation


    \code
    int main()
    {
        print_equation(&a, &b, &c);
        /// processing of solution of square equation
        switch (solve_square_equation(a,b,c,&x1,&x2))
        {
            case '0': /// indicates that equation hasn't got any roots
            {
                cout << endl << "this equation hasn't got any roots (sorry, but it's true)" << endl << endl << "thanks for using this program" << endl;
                return 0;
            }
            case '1': /// indicates that equation has only one root
            {
                cout << endl << "the only one root that has this equation is: " << x1 << endl << endl << "thanks for using this program" << endl;
                return 0;
            }
            case '2': /// indicates that equation has two root
            {
                cout << endl << "Yep, we did it, first root that has this equation is: " << x1 << endl  << "while the second root is: "  << x2 <<
                endl << endl << "thanks for using this program" << endl;
                return 0;
            }
            case 'i': /// indicates that equation has infinite number of roots
            {
                cout << endl << "your equation has infinite number of roots (like your iq)" << endl << endl << "thanks for using this program" << endl;
                return 0;
            }
        }
    }
    \endcode
*/

int main()
{
    print_equation(&a, &b, &c);
    /// processing of solution of square equation
    switch (solve_square_equation(a,b,c,&x1,&x2))
    {
        case '0': /// indicates that equation hasn't got any roots
        {
            cout << endl << "this equation hasn't got any roots (sorry, but it's true)" << endl << endl << "thanks for using this program" << endl;
            return 0;
        }
        case '1': /// indicates that equation has only one root
        {
            cout << endl << "the only one root that has this equation is: " << x1 << endl << endl << "thanks for using this program" << endl;
            return 0;
        }
        case '2': /// indicates that equation has two root
        {
            cout << endl << "Yep, we did it, first root that has this equation is: " << x1 << endl  << "while the second root is: "  << x2 <<
            endl << endl << "thanks for using this program" << endl;
            return 0;
        }
        case 'i': /// indicates that equation has infinite number of roots
        {
            cout << endl << "your equation has infinite number of roots (like your iq)" << endl << endl << "thanks for using this program" << endl;
            return 0;
        }
    }
}
