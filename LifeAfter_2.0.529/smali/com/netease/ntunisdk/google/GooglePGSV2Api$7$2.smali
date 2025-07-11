.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$7$2;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;->onSuccess(Lcom/google/android/gms/games/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$7$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GooglePGSApi_V2"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$7$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$7;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method
