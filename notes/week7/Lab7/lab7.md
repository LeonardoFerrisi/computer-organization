# Making Linked Lists with MIPS Assembly


Node Diagram:

    ------ a node has ...            
    | ---|--->a pointer-to-node field 
    ------   a data field             
    | 17 | and it has the type-name: Node   
    ------

Psuedo C code:

    typedef struct node {
        struct node *next   
        int data;           
    } Node;

    insert(int N, Node *listptr)
    {
    tmpptr = new Node();                                                                // Allocate mem to store the node
    tmptr.data = N;                                                                     // Store data in the Node
    if listptr == Nil or N < listptr.data
    {
        tmpptr.next = listptr                                                           // Assign tmpptr's next value to listptr
        listptr = tmpptr
    }
    else 
    {
        curptr = listptr
        while curptr.next != Nil and curptr.next.data <= N
        {
            curptr = curptr.next
        }
        tmpptr.next = curptr.next
        curptr.next = tmpptr
    }
    return listptr
    }


**The memory is allocated at compile time** --> **So it is within the HEAP not the STACK**