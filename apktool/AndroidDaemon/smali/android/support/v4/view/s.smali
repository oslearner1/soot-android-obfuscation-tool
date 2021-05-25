.class Landroid/support/v4/view/s;
.super Landroid/support/v4/view/r;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/r;-><init>()V

    return-void
.end method


# virtual methods
.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/x;)V
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0, p2}, Landroid/support/v4/view/w;-><init>(Landroid/support/v4/view/x;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, Landroid/support/v4/view/v;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/v;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1
.end method
