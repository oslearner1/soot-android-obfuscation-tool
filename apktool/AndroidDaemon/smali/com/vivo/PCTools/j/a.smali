.class public Lcom/vivo/PCTools/j/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static o:Lcom/vivo/PCTools/j/a;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/vivo/PCTools/view/HandyTextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/vivo/PCTools/view/HandyTextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Landroid/content/DialogInterface$OnClickListener;

.field private r:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0c0003

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/vivo/PCTools/j/a;->b:Landroid/content/Context;

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->setContentView(I)V

    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/view/HandyTextView;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->f:Lcom/vivo/PCTools/view/HandyTextView;

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->g:Landroid/view/View;

    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/view/HandyTextView;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->i:Lcom/vivo/PCTools/view/HandyTextView;

    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/PCTools/j/a;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/j/a;->setTitleLineVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/j/a;->setCancelable(Z)V

    sput-object p0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    return-void
.end method

.method public static getDialog(Landroid/content/Context;ILjava/lang/CharSequence;)Lcom/vivo/PCTools/j/a;
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/vivo/PCTools/j/a;->getDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vivo/PCTools/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static getDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vivo/PCTools/j/a;
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/vivo/PCTools/j/a;->getDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vivo/PCTools/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static getDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vivo/PCTools/j/a;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/vivo/PCTools/j/a;->getDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vivo/PCTools/j/a;

    move-result-object v0

    return-object v0
.end method

.method public static getDialog(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/vivo/PCTools/j/a;
    .locals 7

    new-instance v0, Lcom/vivo/PCTools/j/a;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/j/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/PCTools/j/a;->titleAndMessageIsExist(ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p1}, Lcom/vivo/PCTools/j/a;->setTitle(I)V

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p2}, Lcom/vivo/PCTools/j/a;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/vivo/PCTools/j/a;->buttonIsExist(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p3, p4}, Lcom/vivo/PCTools/j/a;->setButton1(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p5, p6}, Lcom/vivo/PCTools/j/a;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    invoke-virtual {v0, p7, p8}, Lcom/vivo/PCTools/j/a;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setCancelable(Z)V

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/j/a;->setCanceledOnTouchOutside(Z)V

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    return-object v0
.end method


# virtual methods
.method public addMessageView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public buttonIsExist(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    :cond_1
    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/j/a;->a:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->p:Landroid/content/DialogInterface$OnClickListener;

    sget-object v1, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/j/a;->onBackPressed()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->q:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->q:Landroid/content/DialogInterface$OnClickListener;

    sget-object v1, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/vivo/PCTools/j/a;->onBackPressed()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->r:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->r:Landroid/content/DialogInterface$OnClickListener;

    sget-object v1, Lcom/vivo/PCTools/j/a;->o:Lcom/vivo/PCTools/j/a;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/vivo/PCTools/j/a;->onBackPressed()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/vivo/PCTools/j/a;->onBackPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0036
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setButton1(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/vivo/PCTools/j/a;->p:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setButton1Background(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setButton1Clickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public setButton1Focusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method

.method public setButton1TextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/vivo/PCTools/j/a;->q:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setButton2Background(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setButton2Clickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public setButton2Focusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method

.method public setButton2TextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/vivo/PCTools/j/a;->r:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setButton3Background(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setButton3Clickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public setButton3Focusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method

.method public setButton3TextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setCloseVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setDialogContentView(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDialogContentView(ILandroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setID(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/j/a;->a:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->i:Lcom/vivo/PCTools/view/HandyTextView;

    invoke-virtual {v0, p1}, Lcom/vivo/PCTools/view/HandyTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->f:Lcom/vivo/PCTools/view/HandyTextView;

    invoke-virtual {v0, p1}, Lcom/vivo/PCTools/view/HandyTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleLineVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/j/a;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public titleAndMessageIsExist(ILjava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->b:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/vivo/PCTools/j/a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method
