.class public final Lcom/vivo/PCTools/adapter/c;
.super Lcom/vivo/PCTools/adapter/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/PCTools/adapter/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/PCTools/adapter/a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0a0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/view/HandyTextView;

    invoke-virtual {p0, p1}, Lcom/vivo/PCTools/adapter/c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/view/HandyTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
