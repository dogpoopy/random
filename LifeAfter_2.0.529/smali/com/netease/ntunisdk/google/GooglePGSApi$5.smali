.class Lcom/netease/ntunisdk/google/GooglePGSApi$5;
.super Ljava/lang/Object;
.source "GooglePGSApi.java"

# interfaces
.implements Lcom/netease/ntunisdk/google/SignInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/google/GooglePGSApi;->updateEvent(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/google/SignInCallback<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$incrementAmount:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/google/GooglePGSApi;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->this$0:Lcom/netease/ntunisdk/google/GooglePGSApi;

    iput-object p2, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->val$eventId:Ljava/lang/String;

    iput p4, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->val$incrementAmount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getEventsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/EventsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->val$eventId:Ljava/lang/String;

    iget v1, p0, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->val$incrementAmount:I

    .line 312
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/EventsClient;->increment(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/google/GooglePGSApi$5;->onSuccess(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method
