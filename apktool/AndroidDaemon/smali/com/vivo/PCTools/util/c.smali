.class public final Lcom/vivo/PCTools/util/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/vivo/PCTools/j/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const v3, 0x7f0b001f

    new-instance v0, Lcom/vivo/PCTools/j/a;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/j/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p1}, Lcom/vivo/PCTools/j/a;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setCloseVisibility(I)V

    sget-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p2}, Lcom/vivo/PCTools/j/a;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/vivo/PCTools/j/a;->setButton1(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/vivo/PCTools/j/a;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/vivo/PCTools/j/a;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setCanceledOnTouchOutside(Z)V

    sget-object v0, Lcom/vivo/PCTools/util/c;->a:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/j/a;->show()V

    return-void
.end method

.method public static showCustomerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lcom/vivo/PCTools/j/a;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/j/a;-><init>(Landroid/content/Context;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/vivo/PCTools/j/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setCloseVisibility(I)V

    invoke-virtual {v0, p2}, Lcom/vivo/PCTools/j/a;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p3, p6}, Lcom/vivo/PCTools/j/a;->setButton1(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p4, p7}, Lcom/vivo/PCTools/j/a;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p5, p8}, Lcom/vivo/PCTools/j/a;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/j/a;->show()V

    return-void
.end method

.method public static showItemDialog(Lcom/vivo/PCTools/j/d;Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/vivo/PCTools/j/c;

    invoke-direct {v0, p1}, Lcom/vivo/PCTools/j/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/vivo/PCTools/j/c;->setTitle(I)V

    new-instance v1, Lcom/vivo/PCTools/adapter/c;

    invoke-direct {v1, p1, p2}, Lcom/vivo/PCTools/adapter/c;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/c;->setAdapter(Landroid/widget/BaseAdapter;)V

    invoke-virtual {v0, p0}, Lcom/vivo/PCTools/j/c;->setOnSimpleListItemClickListener(Lcom/vivo/PCTools/j/d;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/c;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/j/c;->show()V

    return-void
.end method

.method public static showItemDialog(Lcom/vivo/PCTools/j/d;[Ljava/lang/String;I)V
    .locals 3

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/vivo/PCTools/j/c;

    invoke-direct {v1, v0}, Lcom/vivo/PCTools/j/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/vivo/PCTools/j/c;->setTitle(I)V

    new-instance v2, Lcom/vivo/PCTools/adapter/c;

    invoke-direct {v2, v0, p1}, Lcom/vivo/PCTools/adapter/c;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/j/c;->setAdapter(Landroid/widget/BaseAdapter;)V

    invoke-virtual {v1, p0}, Lcom/vivo/PCTools/j/c;->setOnSimpleListItemClickListener(Lcom/vivo/PCTools/j/d;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/j/c;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Lcom/vivo/PCTools/j/c;->show()V

    return-void
.end method

.method public static showPromptDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Lcom/vivo/PCTools/j/a;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/j/a;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/vivo/PCTools/j/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/vivo/PCTools/j/a;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/j/a;->show()V

    return-void
.end method

.method public static showSelectItemDialog(Lcom/vivo/PCTools/j/d;Landroid/content/Context;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const v3, 0x7f0b001f

    new-instance v0, Lcom/vivo/PCTools/j/b;

    invoke-direct {v0, p1}, Lcom/vivo/PCTools/j/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/vivo/PCTools/j/b;->setTitle(I)V

    new-instance v1, Lcom/vivo/PCTools/adapter/c;

    invoke-direct {v1, p1, p2}, Lcom/vivo/PCTools/adapter/c;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/b;->setAdapter(Landroid/widget/BaseAdapter;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/vivo/PCTools/j/b;->setButton1(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/vivo/PCTools/j/b;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Lcom/vivo/PCTools/j/b;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/b;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/j/b;->show()V

    return-void
.end method
