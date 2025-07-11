.class final Lcom/netease/ntunisdk/base/function/k$2;
.super Ljava/lang/Object;
.source "OrderProtocol.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/function/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;Z)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/base/function/k$2;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/function/k$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-boolean p3, p0, Lcom/netease/ntunisdk/base/function/k$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/netease/ntunisdk/base/function/k;->b()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 75
    invoke-static {}, Lcom/netease/ntunisdk/base/function/k;->b()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/function/k$2;->c:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    const-string p1, "ProtocolFeature2"

    const-string v0, "no sp ready"

    .line 78
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/function/k$2;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v0, p0, Lcom/netease/ntunisdk/base/function/k$2;->b:Z

    invoke-static {p1, v0, p2}, Lcom/netease/ntunisdk/base/function/k;->a(Lcom/netease/ntunisdk/base/OrderInfo;ZZ)V

    return-void
.end method
