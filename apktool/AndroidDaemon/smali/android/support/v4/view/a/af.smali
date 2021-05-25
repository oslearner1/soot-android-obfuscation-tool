.class public final Landroid/support/v4/view/a/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/view/a/ai;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/aj;

    invoke-direct {v0}, Landroid/support/v4/view/a/aj;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/ah;

    invoke-direct {v0}, Landroid/support/v4/view/a/ah;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/a/ag;

    invoke-direct {v0}, Landroid/support/v4/view/a/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/a/ai;

    invoke-direct {v0}, Landroid/support/v4/view/a/ai;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    return-void
.end method

.method public static obtain()Landroid/support/v4/view/a/af;
    .locals 2

    new-instance v0, Landroid/support/v4/view/a/af;

    sget-object v1, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    invoke-virtual {v1}, Landroid/support/v4/view/a/ai;->obtain()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/af;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/a/af;)Landroid/support/v4/view/a/af;
    .locals 3

    new-instance v0, Landroid/support/v4/view/a/af;

    sget-object v1, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v2, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/a/ai;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/af;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/support/v4/view/a/af;

    iget-object v2, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getAddedCount()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getBeforeText()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getClassName()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentItemIndex()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getFromIndex()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getImpl()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getMaxScrollX()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getMaxScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getMaxScrollY()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getMaxScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getParcelableData()Landroid/os/Parcelable;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final getRemovedCount()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getScrollX()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getScrollY()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getSource()Landroid/support/v4/view/a/k;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getSource(Ljava/lang/Object;)Landroid/support/v4/view/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getToIndex()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getWindowId()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFullScreen()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isPassword()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isScrollable()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/ai;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAddedCount(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setAddedCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setBeforeText(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setChecked(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setClassName(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setCurrentItemIndex(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setCurrentItemIndex(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setFromIndex(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setFromIndex(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setFullScreen(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setFullScreen(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setItemCount(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setItemCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setMaxScrollX(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setMaxScrollX(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setMaxScrollY(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setMaxScrollY(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setParcelableData(Landroid/os/Parcelable;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final setPassword(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setPassword(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setRemovedCount(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setRemovedCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setScrollX(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setScrollX(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setScrollY(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setScrollY(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setScrollable(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setScrollable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setSource(Landroid/view/View;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public final setSource(Landroid/view/View;I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/view/a/ai;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public final setToIndex(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/af;->a:Landroid/support/v4/view/a/ai;

    iget-object v1, p0, Landroid/support/v4/view/a/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/ai;->setToIndex(Ljava/lang/Object;I)V

    return-void
.end method
