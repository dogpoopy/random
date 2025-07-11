.class Lcom/netease/ntunisdk/google/GooglePGSApi$2;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi;->signIn(Landroid/app/Activity;Lcom/netease/ntunisdk/google/SignInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/netease/ntunisdk/google/SignInCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Lcom/netease/ntunisdk/google/SignInCallback;Landroid/app/Activity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->val$activity:Landroid/app/Activity;

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
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    if-eqz v0, :cond_2

    .line 122
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/google/SignInCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    if-eqz p1, :cond_2

    .line 126
    invoke-interface {p1}, Lcom/netease/ntunisdk/google/SignInCallback;->onFailed()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    invoke-static {p1}, Lcom/netease/ntunisdk/google/GooglePGSApi;->access$000(Lcom/netease/ntunisdk/google/GooglePGSApi;)Ljava/util/LinkedList;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->val$callback:Lcom/netease/ntunisdk/google/SignInCallback;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/google/GooglePGSApi;->access$100(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/ntunisdk/google/GooglePGSApi;->access$200()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method
