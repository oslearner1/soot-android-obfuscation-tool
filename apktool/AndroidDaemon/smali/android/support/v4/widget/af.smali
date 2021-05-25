.class final Landroid/support/v4/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ah;

.field private synthetic b:Landroid/support/v4/widget/ad;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ad;Landroid/support/v4/widget/ah;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/af;->b:Landroid/support/v4/widget/ad;

    iput-object p2, p0, Landroid/support/v4/widget/af;->a:Landroid/support/v4/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/af;->a:Landroid/support/v4/widget/ah;

    invoke-virtual {v0}, Landroid/support/v4/widget/ah;->storeOriginals()V

    iget-object v0, p0, Landroid/support/v4/widget/af;->a:Landroid/support/v4/widget/ah;

    invoke-virtual {v0}, Landroid/support/v4/widget/ah;->goToNextColor()V

    iget-object v0, p0, Landroid/support/v4/widget/af;->a:Landroid/support/v4/widget/ah;

    iget-object v1, p0, Landroid/support/v4/widget/af;->a:Landroid/support/v4/widget/ah;

    invoke-virtual {v1}, Landroid/support/v4/widget/ah;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ah;->setStartTrim(F)V

    iget-object v0, p0, Landroid/support/v4/widget/af;->b:Landroid/support/v4/widget/ad;

    iget-boolean v0, v0, Landroid/support/v4/widget/ad;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/af;->b:Landroid/support/v4/widget/ad;

    iput-boolean v2, v0, Landroid/support/v4/widget/ad;->a:Z

    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/af;->a:Landroid/support/v4/widget/ah;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ah;->setShowArrow(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/af;->b:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/af;->b:Landroid/support/v4/widget/ad;

    invoke-static {v1}, Landroid/support/v4/widget/ad;->a(Landroid/support/v4/widget/ad;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/widget/ad;->a(Landroid/support/v4/widget/ad;F)F

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/af;->b:Landroid/support/v4/widget/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/ad;->a(Landroid/support/v4/widget/ad;F)F

    return-void
.end method
