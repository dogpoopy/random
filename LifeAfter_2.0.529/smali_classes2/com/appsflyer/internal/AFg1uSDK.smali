.class public final Lcom/appsflyer/internal/AFg1uSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final AFKeystoreWrapper:Z

.field public final valueOf:J

.field public final values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1uSDK;->values:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/appsflyer/internal/AFg1uSDK;->valueOf:J

    .line 11
    iput-boolean p4, p0, Lcom/appsflyer/internal/AFg1uSDK;->AFKeystoreWrapper:Z

    return-void
.end method


# virtual methods
.method public final values()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFg1uSDK;->AFKeystoreWrapper:Z

    return v0
.end method
