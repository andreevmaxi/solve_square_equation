$doxydocs=
{
  classes => [
  ],
  namespaces => [
  ],
  files => [
    {
      name => 'solve_square_equation.cpp',
      includes => [
        {
          name => 'iostream'
        },
        {
          name => 'cmath'
        },
        {
          name => 'float.h'
        },
        {
          name => 'string'
        },
        {
          name => 'vector'
        },
        {
          name => 'cassert'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'SolveSquareEquation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'int'
              },
              {
                declaration_name => 'b',
                type => 'int'
              },
              {
                declaration_name => 'c',
                type => 'int'
              },
              {
                declaration_name => 'x1',
                type => 'double *'
              },
              {
                declaration_name => 'x2',
                type => 'double *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'PrintEquation',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'a',
                type => 'int *'
              },
              {
                declaration_name => 'b',
                type => 'int *'
              },
              {
                declaration_name => 'c',
                type => 'int *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'a',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'b',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'c',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            initializer => '= 0'
          },
          {
            kind => 'variable',
            name => 'x1',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double',
            initializer => '= NAN'
          },
          {
            kind => 'variable',
            name => 'x2',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'double',
            initializer => '= NAN'
          }
        ]
      },
      brief => {},
      detailed => {}
    }
  ],
  groups => [
    {
      name => 'third_module',
      title => 'in program module',
      files => [
      ],
      classes => [
      ],
      namespaces => [
      ],
      pages => [
      ],
      groups => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Main function. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            author => [
              {
                type => 'text',
                content => 'andreevmaxi '
              }
            ]
          },
          {
            version => [
              {
                type => 'text',
                content => '1.3 '
              }
            ]
          },
          {
            date => [
              {
                type => 'text',
                content => 'july 2019 year '
              }
            ]
          },
          {
            copyright => [
              {
                type => 'text',
                content => 'korobcom It\'s just processing returning information from function solve_square_equation and outputing roots of square equations (which contains in x1 and x2 variables) '
              }
            ]
          },
          {
            params => [
              {
                parameters => [
                  {
                    name => 'a',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'it\'s integer variable of head member(coefficient) of equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'b',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s integer variable of second member(coefficient) of equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'c',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s integer variable of free member(coefficient) of equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'x1',
                    dir => 'in'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s double variable which contains first root of input equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'x2',
                    dir => 'in'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s double variable which contains second root of input equation'
                  }
                ]
              }
            ]
          },
          {
            type => 'preformatted',
            content => 'int main()
{
    PrintEquation(&a, &b, &c);
    /// processing of solution of square equation
    switch (solve square equation(a,b,c,&x1,&x2))
    {
        case \'0\': /// indicates that equation hasn\'t got any roots
        {
            cout << endl << "this equation hasn\'t got any roots (sorry, but it\'s true)" << endl << endl << "thanks for using this program" << endl;
            return 0;
        }
        case \'1\': /// indicates that equation has only one root
        {
            cout << endl << "the only one root that has this equation is: " << x1 << endl << endl << "thanks for using this program" << endl;
            return 0;
        }
        case \'2\': /// indicates that equation has two root
        {
            cout << endl << "Yep, we did it, first root that has this equation is: " << x1 << endl  << "while the second root is: "  << x2 <<
            endl << endl << "thanks for using this program" << endl;
            return 0;
        }
        case \'i\': /// indicates that equation has infinite number of roots
        {
            cout << endl << "your equation has infinite number of roots (like your iq)" << endl << endl << "thanks for using this program" << endl;
            return 0;
        }
    }
}'
          },
          {
            type => 'text',
            content => ' '
          }
        ]
      }
    },
    {
      name => 'main_module',
      title => 'solve square module',
      files => [
      ],
      classes => [
      ],
      namespaces => [
      ],
      pages => [
      ],
      groups => [
        {
          title => 'in program module'
        },
        {
          title => 'solve square function module'
        },
        {
          title => 'side module'
        }
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'This is main module this is the module which contains all working functions. '
          }
        ]
      },
      detailed => {}
    },
    {
      name => 'first_module',
      title => 'solve square function module',
      files => [
      ],
      classes => [
      ],
      namespaces => [
      ],
      pages => [
      ],
      groups => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'This function solving square equation. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            author => [
              {
                type => 'text',
                content => 'andreevmaxi '
              }
            ]
          },
          {
            version => [
              {
                type => 'text',
                content => '1.3 '
              }
            ]
          },
          {
            date => [
              {
                type => 'text',
                content => 'july 2019 year '
              }
            ]
          },
          {
            copyright => [
              {
                type => 'text',
                content => 'korobcom This is head function in this program, it\'s solving square equation by getting coefficients (head, second and free) of inputing equation and changes variables x1 and x2 with 1st and 2nd roots of equation. the formulas in variant of a!=0, b!=0,c!=0: '
              },
              {
                type => 'formula',
                id => '',
                content => '$ x_1 = \\frac{-b-\\sqrt{b^2-4*a*c}}{2a} $'
              },
              {
                type => 'text',
                content => ' and '
              },
              {
                type => 'formula',
                id => '',
                content => '$ x_2 = \\frac{-b+\\sqrt{b^2-4*a*c}}{2a} $'
              },
              {
                type => 'text',
                content => ' '
              }
            ]
          },
          {
            return => [
              {
                type => 'text',
                content => 'Also it return char values \'1\',\'2\',\'0\' and \'i\', where is: \'1\' - means that this equation have only one root and it is in x1 variable. \'2\' - means that this equation have two roots in x1 and x2 variable respectively. \'0\' - means that this equation don\'t have any roots! \'i\' - means that this equation have infinite number of roots. '
              }
            ]
          },
          {
            params => [
              {
                parameters => [
                  {
                    name => 'a',
                    dir => 'in'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'it\'s integer variable of head member(coefficient) of equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'b',
                    dir => 'in'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s integer variable of second member(coefficient) of equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'c',
                    dir => 'in'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s integer variable of free member(coefficient) of equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'x1',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s double variable which contains first root of input equation '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'x2',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s double variable which contains second root of input equation'
                  }
                ]
              }
            ]
          },
          {
            type => 'preformatted',
            content => 'char SolveSquareEquation(int a, int b, int c, double* x1, double* x2){
    assert(x1 != NULL);
    assert(x2 != NULL);

    switch(a)
    {
        case 0:
        {
            if (b == 0 && c == 0){
                return \'i\';
            }
            if (b == 0 && c != 0){
                return \'0\';
            }
            *x1=-c/b;
            return \'1\';
        }
        default:
        {
            double discriminate = 0; /// variable used for calculate discriminate of square equation
            discriminate = b * b - 4 * a * c;
            if ( discriminate >= 0 )
            {
                *x1 = (- b - sqrt( discriminate ) )/(2 * a);
                *x2 = (- b + sqrt( discriminate ) )/(2 * a);
                if ( discriminate == 0)
                {
                    return \'1\';
                } else
                {
                    return \'2\';
                }
            } else
            {
                return \'0\';
            }
        }

    }

}'
          },
          {
            type => 'text',
            content => ' '
          }
        ]
      }
    },
    {
      name => 'second_module',
      title => 'side module',
      files => [
      ],
      classes => [
      ],
      namespaces => [
      ],
      pages => [
      ],
      groups => [
      ],
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'This function get\'s coefficients from wrote equation. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            author => [
              {
                type => 'text',
                content => 'andreevmaxi '
              }
            ]
          },
          {
            version => [
              {
                type => 'text',
                content => '1.3 '
              }
            ]
          },
          {
            date => [
              {
                type => 'text',
                content => 'july 2019 year '
              }
            ]
          },
          {
            copyright => [
              {
                type => 'text',
                content => 'korobcom'
              }
            ]
          },
          {
            type => 'text',
            content => 'This is second head function in this program,'
          },
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'it\'s getting coefficients from printed equation by processing every symbol of it. At the end it print coefficients of this equation in a, b and c variables. '
          },
          {
            params => [
              {
                parameters => [
                  {
                    name => 'a',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'it\'s integer variable of head member(coefficient) of equation which used in solve_square_equation function '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'b',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s integer variable of second member(coefficient) of equation which used in solve_square_equation function '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'c',
                    dir => 'out'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s integer variable of free member(coefficient) of equation which used in solve_square_equation function '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'user_equation',
                    dir => 'in'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'vector of chars which first it contains answer of user about want he to write equation by yourself or just coefficients second it\'s used in input of user\'s equations(after deleting information about previous user answer) '
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'tmp',
                    dir => 'in'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'it\'s temperary char variable which used in inputing user_equation and than in processing of user_equation '
                  }
                ]
              }
            ]
          },
          {
            return => [
              {
                type => 'text',
                content => 'If this function return char \'k\', than everything is OK!'
              }
            ]
          },
          {
            type => 'preformatted',
            content => 'char PrintEquation(int* a, int* b, int* c){
    assert(a != NULL);
    assert(b != NULL);
    assert(c != NULL);

    int i = 0;
    int tmp_coefficient = 0;
    bool sign_flag = 0;
    vector <char> user_equation;
    char tmp = \' \';

    cout << "Do you want to write your equation by yourself?{YES/NO}" << endl;

    cin.sync();
    while(cin.get(tmp)) {

        user_equation.push_back(tmp);

        if (tmp == \'\\n\'){
            break;
        }

    }

    if (user_equation[0] != \'Y\' || user_equation[1] != \'E\' || user_equation[2] != \'S\')
    {

        cout << "Write down coefficients of your equation" << endl;
        cin >> *a >> *b >> *c;
        return \'k\';
    }

    user_equation.resize(0);

    cout << "Now write your equation; example: 34x^2-51*x + 13213+24x^2= 0" << endl;

    cin.sync();
    while(cin.get(tmp)) {

        if (tmp == \'X\'){
            tmp = tmp - \'A\' + \'a\';
        }

        user_equation.push_back(tmp);

        if (tmp == \'\\n\'){
            break;
        }

    }

    tmp = \' \';

    tmp = user_equation[i];

    while(tmp!=\'=\' && tmp!=\'\\n\')
    {
        if(tmp != \' \' && tmp != \'+\' && tmp != \'-\')
        {
            if(tmp != \'x\' && tmp != \'*\')
            {
                tmp_coefficient = tmp_coefficient*10 + (tmp - \'0\');

            } else {
                if(tmp_coefficient == 0){
                    ++tmp_coefficient;
                }
                if(tmp == \'*\'){
                    ++i;
                }

                if(user_equation[i+1] == \'^\'){

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

            if (tmp == \'-\'){
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

    return \'k\';//where is k == ok

}'
          },
          {
            type => 'text',
            content => ' '
          }
        ]
      }
    }
  ],
  pages => [
  ]
};
1;
