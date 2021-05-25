.class final Lorg/jboss/netty/util/internal/aq;
.super Ljava/util/concurrent/locks/ReentrantLock;


# static fields
.field private static final serialVersionUID:J = -0x73935f43c8f169f6L


# instance fields
.field volatile transient a:I

.field b:I

.field volatile transient c:[Lorg/jboss/netty/util/internal/am;

.field private d:I

.field private e:F

.field private volatile transient f:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method constructor <init>(IF)V
    .locals 3

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput p2, p0, Lorg/jboss/netty/util/internal/aq;->e:F

    new-array v0, p1, [Lorg/jboss/netty/util/internal/am;

    array-length v1, v0

    int-to-float v1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/aq;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/jboss/netty/util/internal/aq;->d:I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/aq;->f:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private a(Lorg/jboss/netty/util/internal/am;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->a()V

    iget-object v0, p1, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    throw v0
.end method

.method private a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/am;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/am;
    .locals 6

    new-instance v0, Lorg/jboss/netty/util/internal/am;

    iget-object v5, p0, Lorg/jboss/netty/util/internal/aq;->f:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/util/internal/am;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/am;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method static a(I)[Lorg/jboss/netty/util/internal/aq;
    .locals 1

    new-array v0, p0, [Lorg/jboss/netty/util/internal/aq;

    return-object v0
.end method

.method private b(I)Lorg/jboss/netty/util/internal/am;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/util/internal/aq;->a:I

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/aq;->b(I)Lorg/jboss/netty/util/internal/am;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget v1, v0, Lorg/jboss/netty/util/internal/am;->b:I

    if-ne v1, p2, :cond_1

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lorg/jboss/netty/util/internal/aq;->a(Lorg/jboss/netty/util/internal/am;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->a()V

    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/aq;->b(I)Lorg/jboss/netty/util/internal/am;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/jboss/netty/util/internal/am;->b:I

    if-ne v0, p2, :cond_0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v1, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object p3, v1, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/aq;->lock()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/aq;->a()V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/aq;->a:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/aq;->d:I

    if-le v4, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    array-length v13, v12

    const/high16 v4, 0x40000000    # 2.0f

    if-lt v13, v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    if-lez v4, :cond_a

    sub-int v4, v5, v4

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/aq;->a:I

    move v7, v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    and-int v9, p2, v4

    aget-object v6, v8, v9

    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_7

    iget v4, v5, Lorg/jboss/netty/util/internal/am;->b:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_0

    invoke-virtual {v5}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_0
    iget-object v4, v5, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move-object v5, v4

    goto :goto_2

    :cond_1
    shl-int/lit8 v4, v13, 0x1

    new-array v14, v4, [Lorg/jboss/netty/util/internal/am;

    array-length v4, v14

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/jboss/netty/util/internal/aq;->e:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/aq;->d:I

    array-length v4, v14

    add-int/lit8 v15, v4, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move/from16 v18, v4

    move v4, v6

    move/from16 v6, v18

    :goto_3
    if-ge v6, v13, :cond_6

    aget-object v7, v12, v6

    if-eqz v7, :cond_2

    iget-object v9, v7, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    iget v8, v7, Lorg/jboss/netty/util/internal/am;->b:I

    and-int v11, v8, v15

    if-nez v9, :cond_3

    aput-object v7, v14, v11

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    move-object v10, v7

    :goto_4
    if-eqz v9, :cond_4

    iget v8, v9, Lorg/jboss/netty/util/internal/am;->b:I

    and-int/2addr v8, v15

    if-eq v8, v11, :cond_b

    move v10, v8

    move-object v8, v9

    :goto_5
    iget-object v9, v9, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move v11, v10

    move-object v10, v8

    goto :goto_4

    :cond_4
    aput-object v10, v14, v11

    :goto_6
    if-eq v7, v10, :cond_2

    invoke-virtual {v7}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    add-int/lit8 v8, v4, 0x1

    :goto_7
    iget-object v4, v7, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move-object v7, v4

    move v4, v8

    goto :goto_6

    :cond_5
    iget v9, v7, Lorg/jboss/netty/util/internal/am;->b:I

    and-int/2addr v9, v15

    aget-object v11, v14, v9

    iget v0, v7, Lorg/jboss/netty/util/internal/am;->b:I

    move/from16 v16, v0

    iget-object v0, v7, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v8, v1, v11, v2}, Lorg/jboss/netty/util/internal/aq;->a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/am;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/am;

    move-result-object v8

    aput-object v8, v14, v9

    move v8, v4

    goto :goto_7

    :cond_6
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    throw v4

    :cond_7
    if-eqz v5, :cond_9

    :try_start_1
    iget-object v4, v5, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v4}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez p4, :cond_8

    move-object/from16 v0, p3

    iput-object v0, v5, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    return-object v4

    :cond_9
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/aq;->b:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lorg/jboss/netty/util/internal/aq;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/jboss/netty/util/internal/aq;->a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/am;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/am;

    move-result-object v5

    aput-object v5, v8, v9

    move-object/from16 v0, p0

    iput v7, v0, Lorg/jboss/netty/util/internal/aq;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :cond_a
    move v7, v5

    goto/16 :goto_1

    :cond_b
    move-object v8, v10

    move v10, v11

    goto :goto_5
.end method

.method final a()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/aq;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/internal/au;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/au;->keyRef()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/au;->keyHash()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lorg/jboss/netty/util/internal/aq;->b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/jboss/netty/util/internal/aq;->a:I

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, v2, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/aq;->a(Lorg/jboss/netty/util/internal/am;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_0
    invoke-static {v0}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, v2, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move-object v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->a()V

    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/aq;->b(I)Lorg/jboss/netty/util/internal/am;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/jboss/netty/util/internal/am;->b:I

    if-ne v0, p2, :cond_0

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v2}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object p4, v1, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->lock()V

    if-nez p4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->a()V

    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/aq;->a:I

    add-int/lit8 v2, v0, -0x1

    iget-object v5, p0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    aget-object v3, v5, v6

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    iget-object v0, v4, Lorg/jboss/netty/util/internal/am;->a:Ljava/lang/Object;

    if-eq p1, v0, :cond_2

    if-nez p4, :cond_1

    iget v0, v4, Lorg/jboss/netty/util/internal/am;->b:I

    if-ne p2, v0, :cond_1

    invoke-virtual {v4}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, v4, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move-object v4, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-eqz v4, :cond_6

    iget-object v1, v4, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    iget v0, p0, Lorg/jboss/netty/util/internal/aq;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/aq;->b:I

    iget-object v0, v4, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    move v10, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v10

    :goto_1
    if-eq v2, v4, :cond_5

    invoke-virtual {v2}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iget-object v2, v2, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    goto :goto_1

    :cond_4
    iget v8, v2, Lorg/jboss/netty/util/internal/am;->b:I

    iget-object v9, v2, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v9}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v7, v8, v3, v9}, Lorg/jboss/netty/util/internal/aq;->a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/am;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/am;

    move-result-object v3

    goto :goto_2

    :cond_5
    aput-object v3, v5, v6

    iput v0, p0, Lorg/jboss/netty/util/internal/aq;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_6
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    throw v0
.end method

.method final b()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/jboss/netty/util/internal/aq;->a:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->lock()V

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/aq;->c:[Lorg/jboss/netty/util/internal/am;

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/aq;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/aq;->b:I

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/util/internal/aq;->f:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/aq;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/aq;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;I)Z
    .locals 2

    iget v0, p0, Lorg/jboss/netty/util/internal/aq;->a:I

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/aq;->b(I)Lorg/jboss/netty/util/internal/am;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/jboss/netty/util/internal/am;->b:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/am;->d:Lorg/jboss/netty/util/internal/am;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
