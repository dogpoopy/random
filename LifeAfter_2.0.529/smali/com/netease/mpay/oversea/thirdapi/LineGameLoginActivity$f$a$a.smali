.class Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a$a;
.super Ljava/lang/Object;
.source "LineGameLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;->a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a$a;->b:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a$a;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a$a;->b:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;->a:Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;->a(Z)V

    return-void
.end method
