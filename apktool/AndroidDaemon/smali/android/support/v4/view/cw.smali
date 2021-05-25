.class final Landroid/support/v4/view/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/routing/d;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/media/routing/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/cw;->a:Landroid/support/v4/media/routing/d;

    iput-object p2, p0, Landroid/support/v4/view/cw;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/cw;->a:Landroid/support/v4/media/routing/d;

    iget-object v1, p0, Landroid/support/v4/view/cw;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/media/routing/d;->onAnimationUpdate(Landroid/view/View;)V

    return-void
.end method
