# Communication Patterns on iOS

When talking about _communication_, we usually mean the _exchange of information between some sort of entities_. Human communication can be viewed in this way. Exchanging information in the context of human communicationo really means **sending and receiving messages**. These messages can be expressed _verbally_ if this is an actual conversation, or maybe written if the communication takes place via email. So, the _entities_ that are exchanging information in this context are human beings, and the messages being sent and received are either spoken or written.

In Object-Oriented Programming (OOP), we also want to think of communication in terms of sending and receiving messages. In this case, the _entities_ will be the _objects_ that exist in our program (so the instances of the classes that you write). But what about the messages? In OOP, messages are being sent through method calls! **An object `a` invoking a method on another object `b` can be said to send a message to this object. The _arguments_ that `a` passes into the method call are the _content_ or _payload_ of the message. In this context `a` can be seen as the _sender_ of the message, whereas `b` is the _receiver_.**

This playground includes a demonstration of different communication patterns that are very common in iOS development. The following patterns are illustrated with minimal examples in this playground:

### One-To-One

1. Direct Method Invocation
2. Delegates
3. Closures

### One-To-Many

1. `NSNotificationCenter`
2. Key-Value-Observing (KVO)


