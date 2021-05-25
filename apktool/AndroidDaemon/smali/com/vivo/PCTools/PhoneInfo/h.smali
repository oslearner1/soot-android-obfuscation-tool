.class final Lcom/vivo/PCTools/PhoneInfo/h;
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
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/vivo/PCTools/PcFtpRemote/j;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/vivo/PCTools/PcFtpRemote/j;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v2}, Lcom/vivo/PCTools/PcFtpRemote/j;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/vivo/PCTools/PcFtpRemote/j;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
