.class final Lorg/jboss/netty/util/internal/i;
.super Ljava/util/concurrent/locks/ReentrantLock;


# static fields
.field private static final serialVersionUID:J = -0x1bc7a7ae5c5faaabL


# instance fields
.field volatile transient a:I

.field b:I

.field volatile transient c:[Lorg/jboss/netty/util/internal/e;

.field private d:I

.field private e:F


# direct methods
.method constructor <init>(IF)V
    .locals 3

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput p2, p0, Lorg/jboss/netty/util/internal/i;->e:F

    new-array v0, p1, [Lorg/jboss/netty/util/internal/e;

    array-length v1, v0

    int-to-float v1, v1

    iget v2, p0, Lorg/jboss/netty/util/internal/i;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/jboss/netty/util/internal/i;->d:I

    iput-object v0, p0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;

    return-void
.end method

.method private a(Lorg/jboss/netty/util/internal/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->lock()V

    :try_start_0
    iget-object v0, p1, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    throw v0
.end method

.method private static a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/e;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/e;
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jboss/netty/util/internal/e;-><init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/e;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(I)[Lorg/jboss/netty/util/internal/i;
    .locals 1

    new-array v0, p0, [Lorg/jboss/netty/util/internal/i;

    return-object v0
.end method

.method private b(I)Lorg/jboss/netty/util/internal/e;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/util/internal/i;->a:I

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/i;->b(I)Lorg/jboss/netty/util/internal/e;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget v0, v1, Lorg/jboss/netty/util/internal/e;->b:I

    if-ne v0, p2, :cond_1

    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lorg/jboss/netty/util/internal/i;->a(Lorg/jboss/netty/util/internal/e;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->lock()V

    :try_start_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/i;->b(I)Lorg/jboss/netty/util/internal/e;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/jboss/netty/util/internal/e;->b:I

    if-ne v0, p2, :cond_0

    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    iput-object p3, v1, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/i;->lock()V

    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/jboss/netty/util/internal/i;->a:I

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/i;->d:I

    if-le v3, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;

    array-length v12, v11

    const/high16 v3, 0x40000000    # 2.0f

    if-lt v12, v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-lez v3, :cond_a

    sub-int v3, v4, v3

    add-int/lit8 v4, v3, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/i;->a:I

    move v6, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    and-int v8, p2, v3

    aget-object v5, v7, v8

    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_7

    iget v3, v4, Lorg/jboss/netty/util/internal/e;->b:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_0

    iget-object v3, v4, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_0
    iget-object v3, v4, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move-object v4, v3

    goto :goto_2

    :cond_1
    shl-int/lit8 v3, v12, 0x1

    new-array v13, v3, [Lorg/jboss/netty/util/internal/e;

    array-length v3, v13

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/jboss/netty/util/internal/i;->e:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jboss/netty/util/internal/i;->d:I

    array-length v3, v13

    add-int/lit8 v14, v3, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v5

    move/from16 v5, v17

    :goto_3
    if-ge v5, v12, :cond_6

    aget-object v6, v11, v5

    if-eqz v6, :cond_2

    iget-object v8, v6, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    iget v7, v6, Lorg/jboss/netty/util/internal/e;->b:I

    and-int v10, v7, v14

    if-nez v8, :cond_3

    aput-object v6, v13, v10

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    move-object v9, v6

    :goto_4
    if-eqz v8, :cond_4

    iget v7, v8, Lorg/jboss/netty/util/internal/e;->b:I

    and-int/2addr v7, v14

    if-eq v7, v10, :cond_b

    move v9, v7

    move-object v7, v8

    :goto_5
    iget-object v8, v8, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move v10, v9

    move-object v9, v7

    goto :goto_4

    :cond_4
    aput-object v9, v13, v10

    :goto_6
    if-eq v6, v9, :cond_2

    iget-object v7, v6, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, 0x1

    :goto_7
    iget-object v3, v6, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move-object v6, v3

    move v3, v7

    goto :goto_6

    :cond_5
    iget v8, v6, Lorg/jboss/netty/util/internal/e;->b:I

    and-int/2addr v8, v14

    aget-object v10, v13, v8

    iget v15, v6, Lorg/jboss/netty/util/internal/e;->b:I

    iget-object v0, v6, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v7, v15, v10, v0}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/e;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/e;

    move-result-object v7

    aput-object v7, v13, v8

    move v7, v3

    goto :goto_7

    :cond_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    throw v3

    :cond_7
    if-eqz v4, :cond_9

    :try_start_1
    iget-object v3, v4, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    if-nez p4, :cond_8

    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    return-object v3

    :cond_9
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jboss/netty/util/internal/i;->b:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/jboss/netty/util/internal/i;->b:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v5, v2}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/e;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/e;

    move-result-object v4

    aput-object v4, v7, v8

    move-object/from16 v0, p0

    iput v6, v0, Lorg/jboss/netty/util/internal/i;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :cond_a
    move v6, v4

    goto/16 :goto_1

    :cond_b
    move-object v7, v9

    move v9, v10

    goto :goto_5
.end method

.method final a()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/jboss/netty/util/internal/i;->a:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->lock()V

    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/i;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/util/internal/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    throw v0
.end method

.method final a(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/jboss/netty/util/internal/i;->a:I

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;

    array-length v5, v4

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, v2, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lorg/jboss/netty/util/internal/i;->a(Lorg/jboss/netty/util/internal/e;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    iget-object v0, v2, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move-object v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->lock()V

    :try_start_0
    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/i;->b(I)Lorg/jboss/netty/util/internal/e;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget v0, v1, Lorg/jboss/netty/util/internal/e;->b:I

    if-ne v0, p2, :cond_0

    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    iput-object p4, v1, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->lock()V

    :try_start_0
    iget v0, p0, Lorg/jboss/netty/util/internal/i;->a:I

    add-int/lit8 v2, v0, -0x1

    iget-object v5, p0, Lorg/jboss/netty/util/internal/i;->c:[Lorg/jboss/netty/util/internal/e;

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    aget-object v3, v5, v6

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    iget-object v0, v4, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    iget v0, v4, Lorg/jboss/netty/util/internal/e;->b:I

    if-ne p2, v0, :cond_0

    iget-object v0, v4, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v4, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move-object v4, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v4, :cond_5

    iget-object v1, v4, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    iget v0, p0, Lorg/jboss/netty/util/internal/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/util/internal/i;->b:I

    iget-object v0, v4, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    move v10, v2

    move-object v2, v3

    move-object v3, v0

    move v0, v10

    :goto_1
    if-eq v2, v4, :cond_4

    iget-object v7, v2, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    if-nez v7, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iget-object v2, v2, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    goto :goto_1

    :cond_3
    iget v8, v2, Lorg/jboss/netty/util/internal/e;->b:I

    iget-object v9, v2, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    invoke-static {v7, v8, v3, v9}, Lorg/jboss/netty/util/internal/i;->a(Ljava/lang/Object;ILorg/jboss/netty/util/internal/e;Ljava/lang/Object;)Lorg/jboss/netty/util/internal/e;

    move-result-object v3

    goto :goto_2

    :cond_4
    aput-object v3, v5, v6

    iput v0, p0, Lorg/jboss/netty/util/internal/i;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_5
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/i;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;I)Z
    .locals 2

    iget v0, p0, Lorg/jboss/netty/util/internal/i;->a:I

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lorg/jboss/netty/util/internal/i;->b(I)Lorg/jboss/netty/util/internal/e;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/jboss/netty/util/internal/e;->b:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, v0, Lorg/jboss/netty/util/internal/e;->d:Lorg/jboss/netty/util/internal/e;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
