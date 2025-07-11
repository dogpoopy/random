.class public Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;
.super Ljava/lang/Object;
.source "SystemSoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/so/SystemSoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Unit"
.end annotation


# instance fields
.field public mParentDir:Ljava/lang/String;

.field public mSoMd5:Ljava/lang/String;

.field public mSoName:Ljava/lang/String;

.field public mSoSize:J

.field public mSoUuid:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, -0x1

    .line 60
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoSize:J

    const-string p1, ""

    .line 61
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoMd5:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoName:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoSize:J

    const-string p1, ""

    .line 61
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoMd5:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mParentDir:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoName:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoUuid:Ljava/lang/String;

    .line 67
    iput-wide p5, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoSize:J

    .line 68
    iput-object p7, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoMd5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unit{mParentDir=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mParentDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSoName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSoUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSoSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mSoMd5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$Unit;->mSoMd5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
