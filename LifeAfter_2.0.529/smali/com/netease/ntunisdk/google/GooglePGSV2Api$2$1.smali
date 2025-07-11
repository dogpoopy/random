.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$1;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    invoke-interface {p1}, Lcom/netease/ntunisdk/google/SignInCallback;->onFailed()V

    return-void
.end method
