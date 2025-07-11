.class Lcom/netease/ntunisdk/google/GooglePGSApi$8$1;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi$8;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$8;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi$8;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$8$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Landroid/content/Intent;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$8$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$8;

    iget-object v0, v0, Lcom/netease/ntunisdk/google/GooglePGSApi$8;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/ntunisdk/google/GooglePGSApi;->access$700()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 403
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$8$1;->this$1:Lcom/netease/ntunisdk/google/GooglePGSApi$8;

    iget-object p1, p1, Lcom/netease/ntunisdk/google/GooglePGSApi$8;->val$callBack:Lcom/netease/ntunisdk/google/CallBack;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/google/CallBack;->onFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 399
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$8$1;->onSuccess(Landroid/content/Intent;)V

    return-void
.end method
