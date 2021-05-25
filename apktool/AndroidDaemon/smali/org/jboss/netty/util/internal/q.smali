.class abstract Lorg/jboss/netty/util/internal/q;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[Lorg/jboss/netty/util/internal/p;

.field private d:Lorg/jboss/netty/util/internal/p;

.field private e:Lorg/jboss/netty/util/internal/p;

.field private f:Ljava/lang/Object;

.field private synthetic g:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/util/internal/q;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/t;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/q;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/q;->b:I

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/q;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/p;->d:Lorg/jboss/netty/util/internal/p;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/q;->b:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->c:[Lorg/jboss/netty/util/internal/p;

    iget v1, p0, Lorg/jboss/netty/util/internal/q;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/q;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/q;->a:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/t;

    iget v1, p0, Lorg/jboss/netty/util/internal/q;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/q;->a:I

    aget-object v0, v0, v1

    iget v1, v0, Lorg/jboss/netty/util/internal/t;->a:I

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/jboss/netty/util/internal/t;->c:[Lorg/jboss/netty/util/internal/p;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/q;->c:[Lorg/jboss/netty/util/internal/p;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->c:[Lorg/jboss/netty/util/internal/p;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/q;->c:[Lorg/jboss/netty/util/internal/p;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/q;->b:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method final a()Lorg/jboss/netty/util/internal/p;
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/q;->e:Lorg/jboss/netty/util/internal/p;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->e:Lorg/jboss/netty/util/internal/p;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/p;->a:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/q;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/q;->b()V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->e:Lorg/jboss/netty/util/internal/p;

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/q;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/q;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->e:Lorg/jboss/netty/util/internal/p;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/q;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/q;->e:Lorg/jboss/netty/util/internal/p;

    return-void
.end method

.method public rewind()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/q;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->segments:[Lorg/jboss/netty/util/internal/t;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/q;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/q;->b:I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/q;->c:[Lorg/jboss/netty/util/internal/p;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/q;->d:Lorg/jboss/netty/util/internal/p;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/q;->e:Lorg/jboss/netty/util/internal/p;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/q;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/q;->b()V

    return-void
.end method
