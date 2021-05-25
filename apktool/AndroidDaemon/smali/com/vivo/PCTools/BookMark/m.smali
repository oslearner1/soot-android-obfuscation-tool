.class final Lcom/vivo/PCTools/BookMark/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/BookMark/a;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/BookMark/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/m;->a:Lcom/vivo/PCTools/BookMark/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/m;->a:Lcom/vivo/PCTools/BookMark/a;

    invoke-static {v0}, Lcom/vivo/PCTools/BookMark/a;->a(Lcom/vivo/PCTools/BookMark/a;)Lcom/vivo/PCTools/BookMark/BookmarkData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setParentid(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
