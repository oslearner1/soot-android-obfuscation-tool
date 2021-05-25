.class public final Landroid/support/v4/view/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/view/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/c;

    invoke-direct {v0}, Landroid/support/v4/view/a/c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/b;

    invoke-direct {v0}, Landroid/support/v4/view/a/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/view/a/d;

    invoke-direct {v0}, Landroid/support/v4/view/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    goto :goto_0
.end method

.method public static appendRecord(Landroid/view/accessibility/AccessibilityEvent;Landroid/support/v4/view/a/af;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    invoke-virtual {p1}, Landroid/support/v4/view/a/af;->getImpl()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/view/a/d;->appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public static asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/af;
    .locals 1

    new-instance v0, Landroid/support/v4/view/a/af;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/af;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/a/d;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Landroid/support/v4/view/a/af;
    .locals 2

    new-instance v0, Landroid/support/v4/view/a/af;

    sget-object v1, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/a/d;->getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/af;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/a/d;->getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/a/a;->a:Landroid/support/v4/view/a/d;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/a/d;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method
