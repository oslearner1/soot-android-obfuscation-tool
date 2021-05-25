.class Landroid/support/v4/widget/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:F

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v4/widget/b;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    iput v2, p0, Landroid/support/v4/widget/b;->g:I

    iput v2, p0, Landroid/support/v4/widget/b;->h:I

    return-void
.end method

.method private a(J)F
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget-wide v1, p0, Landroid/support/v4/widget/b;->e:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p0, Landroid/support/v4/widget/b;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, p0, Landroid/support/v4/widget/b;->i:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    :cond_1
    iget-wide v1, p0, Landroid/support/v4/widget/b;->e:J

    sub-long v1, p1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    long-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/b;->a:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v0, v5}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    mul-float/2addr v0, v3

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Landroid/support/v4/widget/b;->i:J

    sub-long v1, p1, v1

    iget v3, p0, Landroid/support/v4/widget/b;->j:F

    sub-float v3, v5, v3

    iget v4, p0, Landroid/support/v4/widget/b;->j:F

    long-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/b;->k:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v0, v5}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    goto :goto_0
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public static getCurrVelocity(Ljava/lang/Object;)F
    .locals 1

    check-cast p0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
    .locals 1

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 1

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public static onPull(Ljava/lang/Object;FF)Z
    .locals 1

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 0

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 5

    iget-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/b;->a(J)F

    move-result v2

    const/high16 v3, -0x3f800000    # -4.0f

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iget-wide v3, p0, Landroid/support/v4/widget/b;->f:J

    sub-long v3, v0, v3

    iput-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    long-to-float v0, v3

    mul-float/2addr v0, v2

    iget v1, p0, Landroid/support/v4/widget/b;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/b;->g:I

    long-to-float v0, v3

    mul-float/2addr v0, v2

    iget v1, p0, Landroid/support/v4/widget/b;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/b;->h:I

    return-void
.end method

.method public getDeltaX()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/b;->g:I

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/b;->h:I

    return v0
.end method

.method public getHorizontalDirection()I
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/b;->c:F

    iget v1, p0, Landroid/support/v4/widget/b;->c:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getVerticalDirection()I
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/b;->d:F

    iget v1, p0, Landroid/support/v4/widget/b;->d:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 6

    iget-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/b;->i:J

    iget v4, p0, Landroid/support/v4/widget/b;->k:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/b;->e:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v4/widget/b;->b:I

    invoke-static {v2, v3, v4}, Landroid/support/v4/widget/a;->a(III)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/b;->k:I

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/b;->a(J)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/b;->j:F

    iput-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/b;->b:I

    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/b;->a:I

    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/b;->c:F

    iput p2, p0, Landroid/support/v4/widget/b;->d:F

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/b;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    iget-wide v0, p0, Landroid/support/v4/widget/b;->e:J

    iput-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/v4/widget/b;->j:F

    iput v2, p0, Landroid/support/v4/widget/b;->g:I

    iput v2, p0, Landroid/support/v4/widget/b;->h:I

    return-void
.end method
