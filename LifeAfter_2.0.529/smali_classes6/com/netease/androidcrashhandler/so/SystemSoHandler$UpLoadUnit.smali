.class public Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;
.super Ljava/lang/Object;
.source "SystemSoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/so/SystemSoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpLoadUnit"
.end annotation


# instance fields
.field public mCode:I

.field public mExpireIn:J

.field public mStartTime:J

.field public mToken:Ljava/lang/String;

.field public mUploadSoArray:Lorg/json/JSONArray;

.field final synthetic this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;


# direct methods
.method public constructor <init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;I)V
    .locals 2

    .line 103
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mCode:I

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mStartTime:J

    .line 107
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mExpireIn:J

    .line 108
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mUploadSoArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lcom/netease/androidcrashhandler/so/SystemSoHandler;ILjava/lang/String;JJLorg/json/JSONArray;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->this$0:Lcom/netease/androidcrashhandler/so/SystemSoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p2, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mCode:I

    .line 97
    iput-object p3, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mToken:Ljava/lang/String;

    .line 98
    iput-wide p4, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mStartTime:J

    .line 99
    iput-wide p6, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mExpireIn:J

    .line 100
    iput-object p8, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mUploadSoArray:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpLoadUnit{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExpireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mExpireIn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUploadSoArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/so/SystemSoHandler$UpLoadUnit;->mUploadSoArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
