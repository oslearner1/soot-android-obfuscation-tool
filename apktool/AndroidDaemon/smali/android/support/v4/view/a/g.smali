.class final Landroid/support/v4/view/a/g;
.super Landroid/support/v4/view/a/e;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/a/h;)Z
    .locals 1

    iget-object v0, p2, Landroid/support/v4/view/a/h;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/support/v4/view/a/d;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/view/a/d;->getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/d;->getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/d;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    return v0
.end method

.method public final newAccessiblityStateChangeListener(Landroid/support/v4/view/a/h;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/a/j;-><init>(Landroid/support/v4/view/a/g;Landroid/support/v4/view/a/h;)V

    invoke-static {v0}, Landroid/support/v4/view/a/d;->newAccessibilityStateChangeListener(Landroid/support/v4/view/a/j;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/a/h;)Z
    .locals 1

    iget-object v0, p2, Landroid/support/v4/view/a/h;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/support/v4/view/a/d;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
