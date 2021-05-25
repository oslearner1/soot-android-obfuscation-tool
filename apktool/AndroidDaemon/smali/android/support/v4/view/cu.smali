.class final Landroid/support/v4/view/cu;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Landroid/support/v4/view/cx;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/cx;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/cu;->a:Landroid/support/v4/view/cx;

    iput-object p2, p0, Landroid/support/v4/view/cu;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/cu;->a:Landroid/support/v4/view/cx;

    iget-object v1, p0, Landroid/support/v4/view/cu;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/cx;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/cu;->a:Landroid/support/v4/view/cx;

    iget-object v1, p0, Landroid/support/v4/view/cu;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/cx;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/cu;->a:Landroid/support/v4/view/cx;

    iget-object v1, p0, Landroid/support/v4/view/cu;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/cx;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
