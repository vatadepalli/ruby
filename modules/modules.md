# Modules

-   Modules are somewhat similar to classes: they are things that hold methods, just like classes do. However -

-   Modules cannot be instantiated; i.e., it is not possible to create objects from a module. And modules, unlike classes, therefore do not have a method new.

-   With modules you can share methods between classes

    -   Modules can be included into classes, and this makes their methods available on the class, just as if we’d copied and pasted these methods over to the class definition.

-   **Example** use case:
    -   Let’s assume that our application has other classes that need to encrypt things. - And we want to keep the exact way of how we encrypt things.
    -   when we want to switch to a different way of encrypting - we would then only need to change it in this one place, in our module
