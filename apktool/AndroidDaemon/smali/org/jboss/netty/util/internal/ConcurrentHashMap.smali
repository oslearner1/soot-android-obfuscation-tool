.class public final Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2


# instance fields
.field entrySet:Ljava/util/Set;

.field keySet:Ljava/util/Set;

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lorg/jboss/netty/util/internal/i;

.field values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 6

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v0, 0x10000

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    move v4, v3

    move v0, v2

    :goto_0
    if-ge v4, p3, :cond_3

    add-int/lit8 v5, v0, 0x1

    shl-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_0

    :cond_3
    rsub-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentShift:I

    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentMask:I

    invoke-static {v4}, Lorg/jboss/netty/util/internal/i;->a(I)[Lorg/jboss/netty/util/internal/i;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    if-le p1, v1, :cond_4

    move p1, v1

    :cond_4
    div-int v0, p1, v4

    mul-int v1, v0, v4

    if-ge v1, p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_6

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_2
    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    new-instance v3, Lorg/jboss/netty/util/internal/i;

    invoke-direct {v3, v1, p2}, Lorg/jboss/netty/util/internal/i;-><init>(IF)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3

    const/16 v2, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>(IFI)V

    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static hash(I)I
    .locals 3

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method private static hashOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hash(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/i;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/i;->b(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v5, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    array-length v0, v5

    new-array v6, v0, [I

    move v4, v1

    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_5

    move v0, v1

    move v2, v1

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_3

    aget-object v7, v5, v0

    iget v7, v7, Lorg/jboss/netty/util/internal/i;->b:I

    aput v7, v6, v0

    add-int/2addr v2, v7

    aget-object v7, v5, v0

    invoke-virtual {v7, p1}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v3

    :cond_1
    :goto_2
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_b

    move v0, v1

    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_b

    aget v2, v6, v0

    aget-object v7, v5, v0

    iget v7, v7, Lorg/jboss/netty/util/internal/i;->b:I

    if-eq v2, v7, :cond_4

    move v0, v1

    :goto_4
    if-nez v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_5
    array-length v2, v5

    if-ge v0, v2, :cond_6

    aget-object v2, v5, v0

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/i;->lock()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_6
    :try_start_0
    array-length v2, v5

    if-ge v0, v2, :cond_a

    aget-object v2, v5, v0

    invoke-virtual {v2, p1}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    move v0, v3

    :goto_7
    array-length v2, v5

    if-ge v1, v2, :cond_9

    aget-object v2, v5, v1

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/i;->unlock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    throw v0

    :cond_9
    move v1, v0

    goto :goto_2

    :goto_8
    array-length v2, v5

    if-ge v1, v2, :cond_8

    aget-object v2, v5, v1

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/i;->unlock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_4
.end method

.method public final elements()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/k;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/k;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/d;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/d;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    aget-object v5, v3, v0

    iget v5, v5, Lorg/jboss/netty/util/internal/i;->a:I

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lorg/jboss/netty/util/internal/i;->b:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_3

    aget-object v2, v3, v0

    iget v2, v2, Lorg/jboss/netty/util/internal/i;->a:I

    if-nez v2, :cond_0

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Lorg/jboss/netty/util/internal/i;->b:I

    if-ne v2, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/h;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/h;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public final keys()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/g;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/g;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/jboss/netty/util/internal/i;->b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2, v0}, Lorg/jboss/netty/util/internal/i;->b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->hashOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentFor(I)Lorg/jboss/netty/util/internal/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final segmentFor(I)Lorg/jboss/netty/util/internal/i;
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    iget v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final size()I
    .locals 15

    iget-object v7, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->segments:[Lorg/jboss/netty/util/internal/i;

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    array-length v0, v7

    new-array v8, v0, [I

    const/4 v0, 0x0

    move v6, v0

    move-wide v11, v1

    move-wide v0, v11

    move-wide v13, v3

    move-wide v2, v13

    :goto_0
    const/4 v4, 0x2

    if-ge v6, v4, :cond_2

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v9, v7

    if-ge v0, v9, :cond_0

    aget-object v9, v7, v0

    iget v9, v9, Lorg/jboss/netty/util/internal/i;->a:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    aget-object v9, v7, v0

    iget v9, v9, Lorg/jboss/netty/util/internal/i;->b:I

    aput v9, v8, v0

    add-int/2addr v1, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_7

    const/4 v0, 0x0

    :goto_2
    array-length v1, v7

    if-ge v0, v1, :cond_7

    aget-object v1, v7, v0

    iget v1, v1, Lorg/jboss/netty/util/internal/i;->a:I

    int-to-long v9, v1

    add-long/2addr v4, v9

    aget v1, v8, v0

    aget-object v9, v7, v0

    iget v9, v9, Lorg/jboss/netty/util/internal/i;->b:I

    if-eq v1, v9, :cond_1

    const-wide/16 v4, -0x1

    move-wide v0, v4

    :goto_3
    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-wide v11, v0

    move-wide v13, v2

    move-wide v1, v13

    move-wide v3, v11

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    array-length v3, v7

    if-ge v0, v3, :cond_3

    aget-object v3, v7, v0

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/i;->lock()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_5
    array-length v3, v7

    if-ge v0, v3, :cond_4

    aget-object v3, v7, v0

    iget v3, v3, Lorg/jboss/netty/util/internal/i;->a:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_6
    array-length v3, v7

    if-ge v0, v3, :cond_5

    aget-object v3, v7, v0

    invoke-virtual {v3}, Lorg/jboss/netty/util/internal/i;->unlock()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_6

    const v0, 0x7fffffff

    :goto_7
    return v0

    :cond_6
    long-to-int v0, v1

    goto :goto_7

    :cond_7
    move-wide v0, v4

    goto :goto_3
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jboss/netty/util/internal/l;

    invoke-direct {v0, p0}, Lorg/jboss/netty/util/internal/l;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
