.class final Landroid/support/v4/view/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/routing/d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/routing/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/bi;->a:Landroid/support/v4/media/routing/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    new-instance v0, Landroid/support/v4/view/cz;

    invoke-direct {v0, p2}, Landroid/support/v4/view/cz;-><init>(Landroid/view/WindowInsets;)V

    iget-object v1, p0, Landroid/support/v4/view/bi;->a:Landroid/support/v4/media/routing/d;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/media/routing/d;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/cy;)Landroid/support/v4/view/cy;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/cz;

    invoke-virtual {v0}, Landroid/support/v4/view/cz;->a()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
