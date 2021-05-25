.class public final Landroid/support/v4/view/a/ak;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/view/a/am;


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/al;

    invoke-direct {v0, v2}, Landroid/support/v4/view/a/al;-><init>(B)V

    sput-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/a/am;

    invoke-direct {v0, v2}, Landroid/support/v4/view/a/am;-><init>(B)V

    sput-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Object;)Landroid/support/v4/view/a/ak;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v4/view/a/ak;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/ak;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtain()Landroid/support/v4/view/a/ak;
    .locals 1

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    invoke-virtual {v0}, Landroid/support/v4/view/a/am;->obtain()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/ak;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/a/ak;)Landroid/support/v4/view/a/ak;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/ak;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/ak;

    move-result-object v0

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
    check-cast p1, Landroid/support/v4/view/a/ak;

    iget-object v2, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/am;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getChild(I)Landroid/support/v4/view/a/ak;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/am;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/ak;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final getChildCount()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getId()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->getId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getLayer()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->getLayer(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getParent()Landroid/support/v4/view/a/ak;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/ak;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/support/v4/view/a/k;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/k;->a(Ljava/lang/Object;)Landroid/support/v4/view/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final getType()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->getType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isAccessibilityFocused()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isActive()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocused()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/ak;->a:Landroid/support/v4/view/a/am;

    iget-object v1, p0, Landroid/support/v4/view/a/ak;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/am;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v4}, Landroid/support/v4/view/a/ak;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v0, "AccessibilityWindowInfo["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/ak;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/v4/view/a/ak;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "<UNKNOWN>"

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", layer="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/ak;->getLayer()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bounds="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", focused="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/ak;->isFocused()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", active="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/ak;->isActive()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasParent="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/view/a/ak;->getParent()Landroid/support/v4/view/a/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasChildren="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/ak;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "TYPE_APPLICATION"

    goto :goto_0

    :pswitch_1
    const-string v0, "TYPE_INPUT_METHOD"

    goto :goto_0

    :pswitch_2
    const-string v0, "TYPE_SYSTEM"

    goto :goto_0

    :pswitch_3
    const-string v0, "TYPE_ACCESSIBILITY_OVERLAY"

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
