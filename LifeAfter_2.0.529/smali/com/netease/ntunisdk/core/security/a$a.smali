.class final Lcom/netease/ntunisdk/core/security/a$a;
.super Lcom/netease/ntunisdk/core/storage/PersistenceStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/security/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/ntunisdk/core/storage/PersistenceStore<",
        "Lcom/netease/ntunisdk/core/storage/SecuritySharedPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/security/a;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/core/security/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/security/a$a;->a:Lcom/netease/ntunisdk/core/security/a;

    invoke-direct {p0}, Lcom/netease/ntunisdk/core/storage/PersistenceStore;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/core/security/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/security/a$a;-><init>(Lcom/netease/ntunisdk/core/security/a;)V

    return-void
.end method


# virtual methods
.method public final getExtFileStore()Lcom/netease/ntunisdk/core/storage/ExtFileStore;
    .locals 4

    new-instance v0, Lcom/netease/ntunisdk/core/security/a$a$1;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/security/a$a;->a:Lcom/netease/ntunisdk/core/security/a;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/security/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/security/a$a;->a:Lcom/netease/ntunisdk/core/security/a;

    iget-object v2, v2, Lcom/netease/ntunisdk/core/security/a;->b:Ljava/lang/String;

    const-string v3, "noah.game.device"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netease/ntunisdk/core/security/a$a$1;-><init>(Lcom/netease/ntunisdk/core/security/a$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getInnerStore()Lcom/netease/ntunisdk/core/storage/Store;
    .locals 4

    new-instance v0, Lcom/netease/ntunisdk/core/security/a$a$2;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/security/a$a;->a:Lcom/netease/ntunisdk/core/security/a;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/security/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/security/a$a;->a:Lcom/netease/ntunisdk/core/security/a;

    iget-object v2, v2, Lcom/netease/ntunisdk/core/security/a;->b:Ljava/lang/String;

    const-string v3, "noah.game.device"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netease/ntunisdk/core/security/a$a$2;-><init>(Lcom/netease/ntunisdk/core/security/a$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
