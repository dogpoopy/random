.class Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;
.super Ljava/lang/Object;
.source "IAwareGameSdk.java"

# interfaces
.implements Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;


# direct methods
.method constructor <init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneInfo(Ljava/lang/String;)V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and mPhoneInfo is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-static {v1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAwareGameSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-static {v0, p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->access$002(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
