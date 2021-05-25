.class public Lcom/vivo/PCTools/BookMark/BookmarkFolder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private date:J

.field private folderlevel:I

.field private id:I

.field private name:Ljava/lang/String;

.field private parentid:I

.field private visits:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->id:I

    iput p2, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->parentid:I

    iput p3, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->folderlevel:I

    iput-object p4, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->name:Ljava/lang/String;

    iput-wide p5, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->date:J

    iput p7, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->visits:I

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->date:J

    return-wide v0
.end method

.method public getFolderLevel()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->folderlevel:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->parentid:I

    return v0
.end method

.method public getVisits()I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->visits:I

    return v0
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->date:J

    return-void
.end method

.method public setFolderLevel(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->folderlevel:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->parentid:I

    return-void
.end method

.method public setVisits(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/BookMark/BookmarkFolder;->visits:I

    return-void
.end method
