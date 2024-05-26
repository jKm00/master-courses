# Code Smells

## Bloaters

| Description          | Problem                                    | Fix                                    |
| -------------------- | ------------------------------------------ | -------------------------------------- |
| Large method/classes | Hard to work with                          | Split up so they have 1 responsibility |
| Long parameter list  | -                                          | Introduce parameter object             |
| Primitive obsession  | Code relies too much on primitives         | Use structs                            |
| Data clumps          | Bunches of data often hand around together | Consolidate the data together          |

### Example - Data clumps

Transform:

```java
int low = daysTempRange().getLow();
int high = daysTempRange().getHight();
withinPlan = plan.withinRange(low, height);
```

To:

```java
withinPlan = plan.withinRange(daysTempRange());
```

## Object-oriented Abusers

| Description                                   | Problem                                                                | Fix                                                                    |
| --------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| Alternative classes with different interfaces | Two classes are similar on the inside but are different on the outside | Create abstract class or interface and let clasees extend or implement |
| Refused bequest                               | Only some of the inheritance are needed / wrong hierarchy              | Restructur inheritance                                                 |
| Switch statement                              | Overuse of switch statements                                           | Replace conditional with polymorphism                                  |
| Temporary fields                              | Class has variable which is only used in some situtation               | Remove / replace variable                                              |

## Change Preventers

| Description          | Problem                                                                           | Fix                                                                      |
| -------------------- | --------------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| Divergent change     | Module change in different ways for different reasons                             | Identify stuff that changes for a particular cause and put them together |
| Shotgun srugery      | Single change made to multiple classes at once                                    | Put all changes into a single class                                      |
| Parallel inheritance | Creating a subclass for a class forces you to create a subclass for another class |                                                                          |

### Example - Divergent Change

Two responsibilities, bank account + serializer

```java
public class Account {
    private int accountNumber;
    private double balance = 0;

    // ...

    public String toXml() {
        return "<account><id>" + this.accountNumber + "</id>" + "<balance>" + this.balance() + "</balance></account>";
    }
}
```

Refactor:

```java
public class Account {
    private int accountNumber;
    private double balance = 0;

    // ...
}

public class AccountXMLSerializer {
    public String toXml(Account account) {
        return "<account>" +
            "<id>" + account.getAccountNumber() + "</id>" +
            "<balance>" + account.getBalance() + "</balance>" +
            "</account>";
    }
}
```

## Dispensables

| Description             | Problem                                                        | Fix                                              |
| ----------------------- | -------------------------------------------------------------- | ------------------------------------------------ |
| Comments                | Good to have, but should be simple                             | Simply code, rename methods, user assertions     |
| Data class              | Class with only fields                                         | Make fiels private and provide getters / setters |
| Lazy class              | A class that isnt doing enough to pay for itself               | Remove class                                     |
| Duplicated code         | Methods with identical results on subclasses                   | Pull up method (DRY)                             |
| Dead code               | Code that is no longer used                                    | Remove                                           |
| Speculative generaility | Implementing code that you might think you need in the furture | Remove unnecessary delegation                    |

## Couplers

| Description                   | Problem                                                                                                         | Name                                  |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------------------- |
| Feature envy                  | Function in one module spends more time communicating with functions or data inside another module that its own | Move function to give it a dream home |
| Inappropriate intimcay        | Two classes tightly linked together                                                                             | -                                     |
| Message chains and middle man | Module in the middle just forwarding the request                                                                | Remove the module in the middle       |
