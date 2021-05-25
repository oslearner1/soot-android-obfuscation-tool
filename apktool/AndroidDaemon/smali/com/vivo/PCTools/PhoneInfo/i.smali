.class abstract Lcom/vivo/PCTools/PhoneInfo/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;


# direct methods
.method private constructor <init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PhoneInfo/i;->a:Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/PhoneInfo/i;-><init>(Lcom/vivo/PCTools/PhoneInfo/FileSortHelper;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vivo/PCTools/PhoneInfo/d;Lcom/vivo/PCTools/PhoneInfo/d;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/vivo/PCTools/PhoneInfo/i;->doCompare(Lcom/vivo/PCTools/PhoneInfo/d;Lcom/vivo/PCTools/PhoneInfo/d;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vivo/PCTools/PhoneInfo/d;

    check-cast p2, Lcom/vivo/PCTools/PhoneInfo/d;

    invoke-virtual {p0, p1, p2}, Lcom/vivo/PCTools/PhoneInfo/i;->compare(Lcom/vivo/PCTools/PhoneInfo/d;Lcom/vivo/PCTools/PhoneInfo/d;)I

    move-result v0

    return v0
.end method

.method protected abstract doCompare(Lcom/vivo/PCTools/PhoneInfo/d;Lcom/vivo/PCTools/PhoneInfo/d;)I
.end method
