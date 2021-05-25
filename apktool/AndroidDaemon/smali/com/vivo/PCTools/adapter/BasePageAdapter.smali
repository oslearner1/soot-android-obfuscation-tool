.class public Lcom/vivo/PCTools/adapter/BasePageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/view/ViewPager;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/ad;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/ad;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->c:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ah;)V

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/vivo/PCTools/adapter/b;

    invoke-direct {v0, p2, p3}, Lcom/vivo/PCTools/adapter/b;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/vivo/PCTools/adapter/BasePageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/adapter/b;

    invoke-static {v0}, Lcom/vivo/PCTools/adapter/b;->a(Lcom/vivo/PCTools/adapter/b;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/adapter/b;->b(Lcom/vivo/PCTools/adapter/b;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/vivo/PCTools/adapter/b;->c(Lcom/vivo/PCTools/adapter/b;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/adapter/b;->a(Lcom/vivo/PCTools/adapter/b;Landroid/support/v4/app/Fragment;)V

    :cond_0
    invoke-static {v0}, Lcom/vivo/PCTools/adapter/b;->a(Lcom/vivo/PCTools/adapter/b;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/adapter/BasePageAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
