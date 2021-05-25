.class final Lcom/vivo/PCTools/PhoneInfo/e;
.super Lcom/vivo/PCTools/PhoneInfo/i;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/PCTools/PhoneInfo/i;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;B)V

    return-void
.end method


# virtual methods
.method public final doCompare(Lcom/vivo/PCTools/PhoneInfo/d;Lcom/vivo/PCTools/PhoneInfo/d;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {v0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
