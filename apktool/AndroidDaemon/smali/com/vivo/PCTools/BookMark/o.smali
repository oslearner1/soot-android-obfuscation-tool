.class final Lcom/vivo/PCTools/BookMark/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/BookMark/a;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/BookMark/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/o;->a:Lcom/vivo/PCTools/BookMark/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/o;->a:Lcom/vivo/PCTools/BookMark/a;

    invoke-static {v0}, Lcom/vivo/PCTools/BookMark/a;->a(Lcom/vivo/PCTools/BookMark/a;)Lcom/vivo/PCTools/BookMark/BookmarkData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BookMark/BookmarkData;->setFolderId(I)V

    return-void
.end method
