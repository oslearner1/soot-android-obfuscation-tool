.class abstract Lorg/jboss/netty/util/internal/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[Lorg/jboss/netty/util/internal/aa;

.field private d:Lorg/jboss/netty/util/internal/aa;

.field private e:Lorg/jboss/netty/util/internal/aa;

.field private f:Ljava/lang/Object;

.field private synthetic g:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ab;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ae;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ab;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ab;->b:I

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/ab;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/aa;->d:Lorg/jboss/netty/util/internal/aa;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/ab;->b:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->c:[Lorg/jboss/netty/util/internal/aa;

    iget v1, p0, Lorg/jboss/netty/util/internal/ab;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ab;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/ab;->a:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ae;

    iget v1, p0, Lorg/jboss/netty/util/internal/ab;->a:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jboss/netty/util/internal/ab;->a:I

    aget-object v0, v0, v1

    iget v1, v0, Lorg/jboss/netty/util/internal/ae;->a:I

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ae;->c:[Lorg/jboss/netty/util/internal/aa;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ab;->c:[Lorg/jboss/netty/util/internal/aa;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->c:[Lorg/jboss/netty/util/internal/aa;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ab;->c:[Lorg/jboss/netty/util/internal/aa;

    aget-object v1, v1, v0

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ab;->b:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method final a()Lorg/jboss/netty/util/internal/aa;
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ab;->e:Lorg/jboss/netty/util/internal/aa;

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->e:Lorg/jboss/netty/util/internal/aa;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/aa;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ab;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/ab;->b()V

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->e:Lorg/jboss/netty/util/internal/aa;

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ab;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/aa;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/util/internal/ab;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->e:Lorg/jboss/netty/util/internal/aa;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ab;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ab;->e:Lorg/jboss/netty/util/internal/aa;

    return-void
.end method

.method public rewind()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ab;->g:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->segments:[Lorg/jboss/netty/util/internal/ae;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ab;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ab;->b:I

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ab;->c:[Lorg/jboss/netty/util/internal/aa;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ab;->d:Lorg/jboss/netty/util/internal/aa;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ab;->e:Lorg/jboss/netty/util/internal/aa;

    iput-object v1, p0, Lorg/jboss/netty/util/internal/ab;->f:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/jboss/netty/util/internal/ab;->b()V

    return-void
.end method
