.class final Landroid/support/v4/view/t;
.super Landroid/support/v4/view/s;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/x;)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0, p2}, Landroid/support/v4/view/w;-><init>(Landroid/support/v4/view/x;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
