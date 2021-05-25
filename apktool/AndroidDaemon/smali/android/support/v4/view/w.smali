.class final Landroid/support/v4/view/w;
.super Landroid/support/v4/view/u;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# direct methods
.method constructor <init>(Landroid/support/v4/view/x;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/u;-><init>(Landroid/support/v4/view/x;)V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/w;->a:Landroid/support/v4/view/x;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/view/x;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
