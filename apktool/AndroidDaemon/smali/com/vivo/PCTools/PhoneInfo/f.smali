.class final Lcom/vivo/PCTools/PhoneInfo/f;
.super Lcom/vivo/PCTools/PhoneInfo/i;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/vivo/PCTools/PhoneInfo/f;->a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/PCTools/PhoneInfo/i;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;B)V

    return-void
.end method


# virtual methods
.method public final doCompare(Lcom/vivo/PCTools/PhoneInfo/d;Lcom/vivo/PCTools/PhoneInfo/d;)I
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/f;->a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;->a(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;J)I

    move-result v0

    return v0
.end method
