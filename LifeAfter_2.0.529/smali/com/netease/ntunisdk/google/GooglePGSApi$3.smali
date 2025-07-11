.class Lcom/netease/ntunisdk/google/GooglePGSApi$3;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi;->logout(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

.field final synthetic val$callback:Lcom/netease/ntunisdk/google/CallBack;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/CallBack;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$3;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$3;->val$callback:Lcom/netease/ntunisdk/google/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GooglePGSApi"

    const-string v1, "signOut-onComplete"

    .line 170
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$3;->val$callback:Lcom/netease/ntunisdk/google/CallBack;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
