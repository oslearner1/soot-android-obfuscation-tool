.class public final Lcom/vivo/PCTools/j/b;
.super Lcom/vivo/PCTools/j/a;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/BaseAdapter;

.field private c:Landroid/support/v4/media/routing/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/j/a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/b;->setDialogContentView(I)V

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vivo/PCTools/j/b;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/vivo/PCTools/j/b;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public final notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/b;->b:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/b;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/b;->c:Landroid/support/v4/media/routing/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/b;->c:Landroid/support/v4/media/routing/d;

    invoke-interface {v0, p3}, Landroid/support/v4/media/routing/d;->onItemClick(I)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/j/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/vivo/PCTools/j/b;->b:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/vivo/PCTools/j/b;->b:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/b;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/PCTools/j/b;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public final setOnSelectListItemClickListener$9d1d12b(Landroid/support/v4/media/routing/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/j/b;->c:Landroid/support/v4/media/routing/d;

    return-void
.end method
