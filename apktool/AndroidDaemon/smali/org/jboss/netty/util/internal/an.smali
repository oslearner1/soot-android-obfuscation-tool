.class abstract Lorg/jboss/netty/util/internal/an;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[Lorg/jboss/netty/util/internal/am;

.field private d:Lorg/jboss/netty/util/internal/am;

.field private e:Lorg/jboss/netty/util/internal/am;

.field private f:Ljava/lang/Object;

.field private synthetic g:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/util/internal/an;->g:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/aq;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/an;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/an;->b:I

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/an;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/an;->b:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->c:[Lorg/jboss/netty/util/internal/am;

    iget v1, p0, Lorg/jboss/netty/util/internal/an;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/an;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/an;->a:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->g:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/aq;

    iget v1, p0, Lorg/jboss/netty/util/internal/an;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/an;->a:I

    aget-object v0, v0, v1

    iget v1, v0, Lorg/jboss/netty/util/internal/aq;->a:I

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/an;->c:[Lorg/jboss/netty/util/internal/am;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->c:[Lorg/jboss/netty/util/internal/am;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/an;->c:[Lorg/jboss/netty/util/internal/am;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/an;->b:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method final a()Lorg/jboss/netty/util/internal/am;
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/an;->e:Lorg/jboss/netty/util/internal/am;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->e:Lorg/jboss/netty/util/internal/am;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/an;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/an;->b()V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->e:Lorg/jboss/netty/util/internal/am;

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/an;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/an;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->e:Lorg/jboss/netty/util/internal/am;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->g:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/an;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/an;->e:Lorg/jboss/netty/util/internal/am;

    return-void
.end method

.method public rewind()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/an;->g:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/aq;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/an;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/an;->b:I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/an;->c:[Lorg/jboss/netty/util/internal/am;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/an;->d:Lorg/jboss/netty/util/internal/am;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/an;->e:Lorg/jboss/netty/util/internal/am;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/an;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/an;->b()V

    return-void
.end method
