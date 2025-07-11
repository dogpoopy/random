.class Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$2;
.super Ljava/lang/Object;
.source "GooglePGSV2Api.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/games/Player;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$2;->this$1:Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;

    iget-object v0, v0, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/google/SignInCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSV2Api$2$2;->onSuccess(Lcom/google/android/gms/games/Player;)V

    return-void
.end method
