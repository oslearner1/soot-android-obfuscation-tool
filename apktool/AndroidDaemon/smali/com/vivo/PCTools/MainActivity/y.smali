.class final Lcom/vivo/PCTools/MainActivity/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/y;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/y;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.iqoo.secure.provider.secureprovider/password"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "password"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/y;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    const v2, 0x7f0a0020

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/y;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    invoke-static {v0, v7}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a(Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;Z)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/y;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->finish()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/y;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/y;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    const v3, 0x7f0b0135

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
