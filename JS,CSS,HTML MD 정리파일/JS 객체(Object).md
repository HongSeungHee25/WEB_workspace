## 객체(Object)
: 자바스크립트에서 Object는 다양한 데이터를 하나의 변수로 그룹화하여 관리할 수 있도록 해주는 데이터 타입입니다. Object는 key-value 형태로 데이터를 저장하며, key는 문자열 또는 Symbol이고, value는 모든 데이터 타입(숫자, 문자열, 배열, 함수 등)을 포함할 수 있습니다. 이러한 key-value 쌍들을 객체의 속성(property) 또는 멤버(member)라고 합니다.<br><br>
Object는 중괄호 {}로 생성하며, key와 value는 콜론 :으로 구분하여 표기합니다. 여러 개의 속성을 가진 Object를 생성할 때는 콤마 ,로 각 속성을 구분합니다.

    예시 코드 : 
    const person = {
    name: 'John',
    age: 30,
    city: 'New York',
    hobbies: ['reading', 'swimming'],
    greet: function() {
    console.log('Hello!');
        }
    };

*위의 예시에서 person은 Object입니다. 이 Object는 다양한 속성을 갖고 있으며, 속성들은 key와 value의 쌍으로 이루어져 있습니다. 예를 들어 name은 key이고 'John'은 value입니다. 이렇게 Object는 다른 데이터 타입과는 달리 구조적인 데이터를 저장하고 관리하기 위해 사용됩니다.*<br><br>

Object의 속성에 접근하려면 마침표 . 또는 대괄호 []를 사용할 수 있습니다.

    예시 코드 : 
    console.log(person.name); // 출력: "John"
    console.log(person['age']); // 출력: 30

*Object는 자바스크립트에서 매우 중요한 개념으로, 다양한 데이터 구조와 애플리케이션에서 사용되는 변수의 그룹화, 메서드(함수)의 포함 등 다양한 용도로 활용됩니다.*

----

## 객체(Object) - method, this
+ `메서드 (Method)` : 자바스크립트 Object 안에 정의된 함수를 메서드라고 합니다. 메서드는 Object의 속성(property)로서 함수를 값으로 가집니다. 이렇게 함수가 Object에 속해있는 경우, 해당 함수는 메서드로 간주됩니다. 메서드는 Object의 속성 값으로 할당되어 객체가 가진 특정 동작을 수행하는 데 사용됩니다.

        예시 코드 : 
        const person = {
        name: 'John',
        age: 30,
        greet: function() {
        console.log('Hello!');
            }
        };
        //위의 person 객체에는 greet라는 메서드가 있습니다. greet 메서드는 단순히 'Hello!'를 출력하는 동작을 수행합니다.
        person.greet(); // 출력: "Hello!"

+ `this` : this는 메서드가 속해있는 객체를 가리키는 특수한 키워드입니다. 함수 안에서 this를 사용하면 해당 함수가 호출된 객체에 접근할 수 있습니다. 이렇게 this를 이용하여 메서드 내에서 객체의 속성에 접근하거나 수정할 수 있습니다.

        예시 코드 : 
        const person = {
        name: 'John',
        age: 30,
        greet: function() {
            console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
            }
        };
        //위의 person 객체에는 greet라는 메서드가 있습니다. 이 메서드 안에서 this.name과 this.age를 사용하여 person 객체의 name과 age 속성에 접근하고 있습니다.
        person.greet(); // 출력: "Hello, my name is John and I am 30 years old."

***주의해야 할 점은, this의 값은 함수가 호출될 때 동적으로 결정되며, 함수를 어떻게 호출하는지에 따라 달라질 수 있습니다. 일반적으로 객체 메서드로 호출할 경우에는 this가 해당 객체를 가리키지만, 콜백 함수로서 호출되거나 다른 문맥에서 호출될 경우에는 this가 다른 값을 가리킬 수 있으므로 주의해야 합니다.***<br><br>
*이렇게 메서드와 this를 사용하면 객체의 상태를 효과적으로 관리하고 객체의 동작을 지정할 수 있습니다.*


