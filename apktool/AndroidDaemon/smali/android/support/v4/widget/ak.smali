.class public Landroid/support/v4/widget/ak;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/support/v4/widget/al;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/ao;

    invoke-direct {v0}, Landroid/support/v4/widget/ao;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/al;->createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/an;

    invoke-direct {v0}, Landroid/support/v4/widget/an;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/am;

    invoke-direct {v0}, Landroid/support/v4/widget/am;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/widget/ak;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v4/widget/ak;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/widget/ak;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ak;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ak;
    .locals 1

    new-instance v0, Landroid/support/v4/widget/ak;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/ak;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public final abortAnimation()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->abortAnimation(Ljava/lang/Object;)V

    return-void
.end method

.method public final computeScrollOffset()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->computeScrollOffset(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final fling(IIIIIIII)V
    .locals 10

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/al;->fling(Ljava/lang/Object;IIIIIIII)V

    return-void
.end method

.method public final fling(IIIIIIIIII)V
    .locals 12

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Landroid/support/v4/widget/al;->fling(Ljava/lang/Object;IIIIIIIIII)V

    return-void
.end method

.method public declared-synchronized getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/a;)Lorg/apache/http/auth/a;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCurrVelocity()F
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->getCurrVelocity(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public final getCurrX()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->getCurrX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->getCurrY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->getFinalX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->getFinalY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSchemeNames()Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isFinished()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isOverScrolled()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/al;->isOverScrolled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final notifyHorizontalEdgeReached(III)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/widget/al;->notifyHorizontalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public final notifyVerticalEdgeReached(III)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/v4/widget/al;->notifyVerticalEdgeReached(Ljava/lang/Object;III)V

    return-void
.end method

.method public declared-synchronized register(Ljava/lang/String;Lorg/apache/http/auth/b;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setItems(Ljava/util/Map;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final springBack(IIIIII)Z
    .locals 8

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/widget/al;->springBack(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public final startScroll(IIII)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/al;->startScroll(Ljava/lang/Object;IIII)V

    return-void
.end method

.method public final startScroll(IIIII)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/widget/ak;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/ak;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/al;->startScroll(Ljava/lang/Object;IIIII)V

    return-void
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
