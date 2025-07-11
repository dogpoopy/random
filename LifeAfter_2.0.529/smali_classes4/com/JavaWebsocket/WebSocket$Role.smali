.class public final enum Lcom/JavaWebsocket/WebSocket$Role;
.super Ljava/lang/Enum;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/JavaWebsocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/JavaWebsocket/WebSocket$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/JavaWebsocket/WebSocket$Role;

.field public static final enum CLIENT:Lcom/JavaWebsocket/WebSocket$Role;

.field public static final enum SERVER:Lcom/JavaWebsocket/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/JavaWebsocket/WebSocket$Role;

    const-string v1, "CLIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/JavaWebsocket/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/JavaWebsocket/WebSocket$Role;->CLIENT:Lcom/JavaWebsocket/WebSocket$Role;

    new-instance v1, Lcom/JavaWebsocket/WebSocket$Role;

    const-string v3, "SERVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/JavaWebsocket/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/JavaWebsocket/WebSocket$Role;->SERVER:Lcom/JavaWebsocket/WebSocket$Role;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/JavaWebsocket/WebSocket$Role;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 12
    sput-object v3, Lcom/JavaWebsocket/WebSocket$Role;->$VALUES:[Lcom/JavaWebsocket/WebSocket$Role;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/JavaWebsocket/WebSocket$Role;
    .locals 1

    .line 12
    const-class v0, Lcom/JavaWebsocket/WebSocket$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/JavaWebsocket/WebSocket$Role;

    return-object p0
.end method

.method public static values()[Lcom/JavaWebsocket/WebSocket$Role;
    .locals 1

    .line 12
    sget-object v0, Lcom/JavaWebsocket/WebSocket$Role;->$VALUES:[Lcom/JavaWebsocket/WebSocket$Role;

    invoke-virtual {v0}, [Lcom/JavaWebsocket/WebSocket$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/JavaWebsocket/WebSocket$Role;

    return-object v0
.end method
