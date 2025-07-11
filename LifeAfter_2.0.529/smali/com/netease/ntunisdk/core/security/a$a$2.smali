.class final Lcom/netease/ntunisdk/core/security/a$a$2;
.super Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/security/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/security/a$a;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/security/a$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/security/a$a$2;->a:Lcom/netease/ntunisdk/core/security/a$a;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getUDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "device3247353318869876128"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->md5([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/core/security/SecurityUtils;->hexlify([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
